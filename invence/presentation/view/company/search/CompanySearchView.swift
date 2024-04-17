//
//  CompanySearchView.swift
//  invence
//
//  Created by Alexander William on 11/04/24.
//

import Foundation
import SwiftUI

struct CompanySearchView: View {
    var toCompanyOnboarding: () -> Void
    
    @Dependency(\.features.contentFeature.companySearchViewModel) var viewModel
    
    var body: some View {
        VStack(
            spacing: 16
        ) {
            Text("Invence")
                .font(.title)
                .bold()
                .foregroundColor(Color("primary"))
            TextField("Search for company", text: Binding(get: { viewModel.query }, set: { viewModel.onQueryChanged(query: $0)}))
                .padding()
                .background()
                .padding()
            InvencePrimaryButton(title: "Search", action: { viewModel.onSearchClicked() })
            InvenceSecondaryButton(title: "Create new company", action: toCompanyOnboarding)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("secondary"))
        .sheet(isPresented: Binding(get: { viewModel.isDialogShowing }, set: { _ in true})) {
            SelectBranchDialog(branches: viewModel.branches!, onBranchClicked: { viewModel.onBranchClicked(branch: $0)})
        }
    }
}

#Preview {
    CompanySearchView(toCompanyOnboarding: {})
}
