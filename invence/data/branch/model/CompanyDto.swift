//
//  CompanyDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation
import FirebaseFirestoreInternal

struct CompanyDto: Codable {
    let uuid: String?
    let name: String?
    let logo_url: String?
    let branches: Array<CompanyBranchDto>?
    let created_at: Timestamp?
    
    func toDomain() -> Company {
        return Company(
            id: uuid ?? "",
            name: name ?? "",
            logoUrl: logo_url,
            branches: branches?.map { branch in branch.toDomain()} ?? [],
            createdAt: created_at?.dateValue() ?? Date()
        )
    }
}
