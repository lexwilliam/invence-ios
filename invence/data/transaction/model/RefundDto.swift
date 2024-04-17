//
//  RefundDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct RefundDto: Codable {
    let uuid: String?
    let total: Double?
    let refunded_by: String?
    let reason: String?
    let created_at: Date?
    let deleted_at: Date?
}
