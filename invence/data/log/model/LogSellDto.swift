//
//  LogSellDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct LogSellDto: Codable {
    let uuid: String?
    let order_group: OrderGroupDto?
    let sold_products: Array<ProductDto>?
    let total_profit: Double?
}
