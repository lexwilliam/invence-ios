//
//  OrderDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct OrderDto: Codable {
    let uuid: String?
    let item: OrderItemDto?
    let discounts: [String: OrderDiscountDto]?
    let quantity: Int?
    let refunded_quantity: Int?
    let note: String?
    let created_at: Date?
    let updated_at: Date?
    let deleted_at: Date?
}
