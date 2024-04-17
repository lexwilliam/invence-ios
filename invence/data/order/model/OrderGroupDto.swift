//
//  OrderGroupDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct OrderGroupDto: Codable {
    let uuid: String?
    let branch_uuid: String?
    let created_by: String?
    let orders: [String: OrderDto]?
    let taxes: [String: OrderTaxDto]?
    let discounts: [String: OrderDiscountDto]?
    let created_at: Date?
    let deleted_at: Date?
    let completed_at: Date?
}
