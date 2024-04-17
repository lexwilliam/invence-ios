//
//  TransactionRepository.swift
//  invence
//
//  Created by Alexander William on 16/04/24.
//

import Foundation

protocol TransactionRepository {
    func observeTransaction(branchUUID: UUID, completion: @escaping (Array<Transaction>) -> Void)
}
