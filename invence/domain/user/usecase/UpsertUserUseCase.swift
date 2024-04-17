//
//  UpsertUserUseCase.swift
//  invence
//
//  Created by Alexander William on 17/04/24.
//

import Foundation

class UpsertUserUseCase {
    var repository: UserRepository
    
    init(repository: UserRepository) {
        self.repository = repository
    }
    
    func invoke(user: User, completion: @escaping (Result<Void, Error>) -> Void) {
        repository.upsertUser(user: user, completion: completion)
    }
}
