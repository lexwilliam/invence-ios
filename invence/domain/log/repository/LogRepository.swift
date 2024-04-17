//
//  LogRepository.swift
//  invence
//
//  Created by Alexander William on 15/04/24.
//

import Foundation

protocol LogRepository {
    func observeLog(branchUUID: UUID, completion: @escaping (Array<Log>) -> Void)
}
