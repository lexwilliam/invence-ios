//
//  TransactionDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct TransactionDto: Codable {
    let uuid: String?
    let branch_uuid: String?
    let order_group: OrderGroupDto?
    let payments: [String: PaymentDto]?
    let refunds: [String: RefundDto]?
    let customer: String?
    let fee: TransactionFeeDto?
    let tip: Double?
    let created_by: String?
    let created_at: Date?
    let deleted_at: Date?
}
