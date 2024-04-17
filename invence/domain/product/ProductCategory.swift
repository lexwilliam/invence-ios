//
//  ProductCategoryDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct ProductCategory {
    let uuid: UUID
    let branch_uuid: UUID
    let name: String
    let image_url: String
    let products: Array<Product>
    let createdAt: Date
    let deletedAt: Date
}
