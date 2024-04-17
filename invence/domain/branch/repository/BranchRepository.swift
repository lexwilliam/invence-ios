//
//  BranchRepository.swift
//  invence
//
//  Created by Alexander William on 17/04/24.
//

import Foundation

protocol BranchRepository {
    func observeCompany(companyUUID: String, completion: @escaping (Company?) -> Void)
}
