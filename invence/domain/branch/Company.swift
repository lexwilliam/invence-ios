//
//  Company.swift
//  invence
//
//  Created by Alexander William on 10/04/24.
//

import Foundation

struct Company: Identifiable {
    let id: String
    let name: String
    let logoUrl: String?
    let branches: Array<CompanyBranch>
    let createdAt: Date
}
