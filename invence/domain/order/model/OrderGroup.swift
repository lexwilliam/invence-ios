//
//  OrderGroup.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct OrderGroup {
    let uuid: UUID
    let branch_uuid: UUID
    let created_by: String
    let orders: Array<Order>
    let taxes: Array<OrderTax>
    let discounts: Array<OrderDiscount>
    let created_at: Date?
    let deleted_at: Date?
    let completed_at: Date?
}
