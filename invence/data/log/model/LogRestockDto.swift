//
//  LogRestockDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct LogRestockDto: Codable {
    let uuid: String?
    let name: String?
    let product_uuid: String?
    let original_stock: Int?
    let added_stock: Int?
    let price: Double?
}
