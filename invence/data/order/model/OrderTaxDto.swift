//
//  OrderTaxDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct OrderTaxDto: Codable {
    let uuid: String?
    let name: String?
    let fixed: Double?
    let percent: Double?
}
