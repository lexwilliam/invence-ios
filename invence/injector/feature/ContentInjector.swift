//
//  ContentInjector.swift
//  invence
//
//  Created by Alexander William on 15/04/24.
//

import Foundation
import FirebaseFirestore

class ContentInjector {
    // Session
    lazy var session: Session = {
        FirebaseAuthenticationManager.shared.getSession()
    }()
    
    // Firebase
    lazy var firestore: Firestore = {
        Firestore.firestore()
    }()
    
    // Repositories
    lazy var userRepository: UserRepository = {
        FirebaseUserRepository(firestore: firestore)
    }()
    
    lazy var branchRepository: BranchRepository = {
        FirebaseBranchRepository(firestore: firestore)
    }()
    
    // Usecases
    lazy var observeUserUseCase: ObserveUserUseCase = {
        ObserveUserUseCase(repository: userRepository)
    }()
    
    lazy var observeUserBranchUseCase: ObserveUserBranchUseCase = {
        ObserveUserBranchUseCase(repository: userRepository, session: session)
    }()
    
    lazy var observeCompanyUseCase: ObserveCompanyUseCase = {
        ObserveCompanyUseCase(repository: branchRepository)
    }()
    
    lazy var upsertUserUseCase: UpsertUserUseCase = {
        UpsertUserUseCase(repository: userRepository)
    }()
    
    // ViewModels
    lazy var appViewModel: AppViewModel = {
        AppViewModel(_observeUserUseCase: observeUserUseCase)
    }()
    
    lazy var companySearchViewModel: CompanySearchViewModel = {
        CompanySearchViewModel(_observeUserBranchUseCase: observeUserBranchUseCase, _upsertUserUseCase: upsertUserUseCase, _observeCompanyUseCase: observeCompanyUseCase)
    }()
}
