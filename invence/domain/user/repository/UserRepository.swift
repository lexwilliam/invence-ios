//
//  UserRepository.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

protocol UserRepository {
    func observeUser(uuid: String, completion: @escaping (User?) -> Void)
    
    func upsertUser(user: User, completion: @escaping (Result<Void, Error>) -> Void)
}
