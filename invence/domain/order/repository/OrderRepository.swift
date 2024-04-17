//
//  OrderRepository.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

protocol OrderRepository {
    func fetchOrder(branch_uuid: String) async throws -> [Array<OrderGroup>]
    func upsertOrder(order: OrderGroup)
}
