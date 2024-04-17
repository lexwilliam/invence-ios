//
//  Transaction.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct Transaction {
    let uuid: UUID
    let branch_uuid: UUID
    let order_group: OrderGroup
    let payments: Array<Payment>
    let refunds: Array<Refund>
    let customer: String
    let fee: TransactionFee
    let tip: Double
    let created_by: String
    let created_at: Date
    let deleted_at: Date
}
