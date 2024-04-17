//
//  Paymentdto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct PaymentDto: Codable {
    let uuid: String?
    let total: Double?
    let payment_method: PaymentMethodDto?
    let created_at: Date?
    let deleted_at: Date?
}
