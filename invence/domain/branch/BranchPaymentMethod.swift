//
//  BranchPaymentMethod.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct BranchPaymentMethod {
    let uuid: UUID
    let group: String
    let name: String
    let fee: BranchPaymentMethodFee
}
