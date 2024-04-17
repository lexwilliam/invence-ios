//
//  ProductDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct Product {
    let uuid: UUID
    let name: String
    let description: String
    let category_name: String
    let sell_price: Double
    let items: Array<ProductItem>
    let image_path: String
    let created_at: String
    let updated_at: String
}
