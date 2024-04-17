//
//  FetchUserUseCase.swift
//  invence
//
//  Created by Alexander William on 15/04/24.
//

import Foundation

struct ObserveUserUseCase {
    private let repository: UserRepository
    
    init(repository: UserRepository) {
        self.repository = repository
    }
    
    func invoke(uuid: String, completion: @escaping (User?) -> Void) {
        repository.observeUser(uuid: uuid, completion: completion)
    }
}
