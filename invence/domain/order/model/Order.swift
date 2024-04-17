//
//  Order.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct Order {
    let uuid: UUID
    let item: OrderItem
    let discounts: [UUID: OrderDiscount]
    let quantity: Int
    let refunded_quantity: Int
    let note: String?
    let created_at: Date
    let updated_at: Date
    let deleted_at: Date
}
