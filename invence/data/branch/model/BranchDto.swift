//
//  BranchDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct BranchDto: Codable {
    let uuid: String?
    let name: String?
    let logo_url: String?
    let address: String?
    let phone: String?
    let payment_methods: [String: BranchPaymentMethodDto]
    let created_at: Date?
}
