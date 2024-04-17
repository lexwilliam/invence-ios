//
//  CompanyBranchDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct CompanyBranchDto: Codable {
    let uuid: String?
    let name: String?
    
    func toDomain() -> CompanyBranch {
        return CompanyBranch(id: UUID(uuidString: uuid ?? "") ?? UUID(), name: name ?? "")
    }
}
