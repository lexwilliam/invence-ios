//
//  OrderItemDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct OrderItemDto: Codable {
    let uuid: String?
    let name: String?
    let category_name: String?
    let label: String?
    let price: Double?
    let image_path: String?
    let description: String?
}
