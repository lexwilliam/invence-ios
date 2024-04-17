//
//  LogSell.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct LogSell {
    let uuid: UUID
    let order_group: OrderGroup
    let sold_products: Array<Product>
    let total_profit: Double
}
