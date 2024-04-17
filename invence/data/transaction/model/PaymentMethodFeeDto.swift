//
//  PaymentMethodFeeDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct PaymentMethodFeeDto: Codable {
    let fixed: Double?
    let percent: Double?
}
