//
//  ProductCategoryDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct ProductCategoryDto: Codable {
    let uuid: String?
    let branch_uuid: String?
    let name: String?
    let image_url: String?
    let products: [String: ProductDto]?
    let createdAt: Date?
    let deletedAt: Date?
}
