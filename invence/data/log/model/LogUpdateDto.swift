//
//  LogUpdateDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct LogUpdateDto: Codable {
    let uuid: String?
    let old: ProductDto?
    let new: ProductDto?
}
