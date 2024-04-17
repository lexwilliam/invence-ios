//
//  Payment.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct Payment {
    let uuid: String
    let total: Double
    let payment_method: PaymentMethod
    let created_at: Date
    let deleted_at: Date
}
