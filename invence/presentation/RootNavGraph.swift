//
//  ContentView.swift
//  invence
//
//  Created by Alexander William on 31/01/24.
//

import SwiftUI

enum ViewType: Hashable {
    case HOME
    case LOGIN
    case INVENTORY
    case COMPANY_SEARCH
    case COMPANY_ONBOARDING
}

struct ContentView: View {
    @Dependency(\.features.contentFeature.appViewModel) var viewModel
    
    @State private var path = NavigationPath()
    @State private var isAuthenticated = false
    @State private var haveUserBranch = false
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                if (isAuthenticated && haveUserBranch) {
                    HomeView(toInventory: navigateToInventory)
                } else if (isAuthenticated) {
                    CompanySearchView(toCompanyOnboarding: navigateToCompanyOnboarding)
                } else {
                    LoginView()
                }
            }
            .navigationDestination(for: ViewType.self) { viewType in
                switch viewType {
                case .HOME:
                    HomeView(toInventory: navigateToInventory)
                case .LOGIN:
                    LoginView()
                case .INVENTORY:
                    InventoryView()
                case .COMPANY_SEARCH:
                    CompanySearchView(toCompanyOnboarding: navigateToCompanyOnboarding)
                case .COMPANY_ONBOARDING:
                    CompanyOnboardingView()
                }
            }
        }
        .onAppear {
            let session = FirebaseAuthenticationManager.shared.getSession()
            
            if let userUUID = session.userUUID {
                viewModel.observeUser(uuid: userUUID) { user in
                    if let user = user {
                        self.isAuthenticated = true
                        self.haveUserBranch = user.branchUUID != nil
                    } else {
                        self.isAuthenticated = false
                        self.haveUserBranch = false
                    }
                }
            } else {
                self.isAuthenticated = false
                self.haveUserBranch = false
            }
        }
    }
    
    func navigateToInventory() {
        path.append(ViewType.INVENTORY)
    }
    
    func navigateToCompanyOnboarding() {
        path.append(ViewType.COMPANY_ONBOARDING)
    }
}
