//
//  PaymentMethodDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct BranchPaymentMethodDto: Codable {
    let uuid: String?
    let group: String?
    let name: String?
    let fee: BranchPaymentMethodFeeDto?
}
