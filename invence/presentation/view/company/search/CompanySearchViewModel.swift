//
//  CompanySearchViewModel.swift
//  invence
//
//  Created by Alexander William on 17/04/24.
//

import Foundation
import SwiftUI

class CompanySearchViewModel: ObservableObject {
    private var _upsertUserUseCase: UpsertUserUseCase
    private var _observeCompanyUseCase: ObserveCompanyUseCase
    
    @Published var user: User? = nil
    
    init(_observeUserBranchUseCase: ObserveUserBranchUseCase, _upsertUserUseCase: UpsertUserUseCase, _observeCompanyUseCase: ObserveCompanyUseCase) {
        self._upsertUserUseCase = _upsertUserUseCase
        self._observeCompanyUseCase = _observeCompanyUseCase
        
        _observeUserBranchUseCase.invoke { user in
            self.user = user
        }
    }
    
    @Published var query: String = ""
    @Published var branches: Array<CompanyBranch>? = nil
    @Published var isDialogShowing: Bool = false
    
    func onQueryChanged(query: String) {
        self.query = query
    }
    
    func onSearchClicked() {
        if (query == "") { return }
        isDialogShowing = true
//        _observeCompanyUseCase.invoke(companyUUID: query) { company in
//            if (company != nil) {
//                self.branches = company?.branches
//            }
//        }
    }
    
    func onBranchClicked(branch: CompanyBranch) {
        guard let user = self.user else { return }
        let modifiedUser = User(
            uuid: user.uuid,
            branchUUID: branch.id,
            name: user.name,
            imageUrl: user.imageUrl,
            email: user.email,
            createdAt: user.createdAt
        )
        
        _upsertUserUseCase.invoke(user: modifiedUser) { error in
            switch (error) {
            case .success():
                print("User upserted successfully")
            case .failure(_):
                print("Error upserting user: \(error)")
            }
        }
    }
    
    func onSheetDismiss() {
        self.branches = nil
    }
}
