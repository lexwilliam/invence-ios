//
//  Branch.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct Branch {
    let uuid: UUID
    let name: String
    let logo_url: String
    let address: String
    let phone: String
    let payment_methods: Array<BranchPaymentMethod>
    let created_at: Date?
}
