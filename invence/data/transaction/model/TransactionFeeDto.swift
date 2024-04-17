//
//  TransactionFeeDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct TransactionFeeDto: Codable {
    let name: String?
    let nominal: Double?
    let percent: Double?
}
