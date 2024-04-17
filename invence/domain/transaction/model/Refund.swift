//
//  Refund.swift
//  invence
//
//  Created by Alexander William on 10/04/24.
//

import Foundation


struct Refund{
    let uuid: UUID
    let total: Double
    let refunded_by: String
    let reason: String
    let created_at: Date
    let deleted_at: Date?
}
