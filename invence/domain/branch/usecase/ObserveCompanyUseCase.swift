//
//  ObserveCompanyUseCase.swift
//  invence
//
//  Created by Alexander William on 17/04/24.
//

import Foundation

class ObserveCompanyUseCase {
    var repository: BranchRepository
    
    init(repository: BranchRepository) {
        self.repository = repository
    }
    
    func invoke(companyUUID: String, completion: @escaping (Company?) -> Void) {
        repository.observeCompany(companyUUID: companyUUID, completion: completion)
    }
}
