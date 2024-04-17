//
//  ObserveUserBranchUseCase.swift
//  invence
//
//  Created by Alexander William on 17/04/24.
//

import Foundation

struct ObserveUserBranchUseCase {
    private let repository: UserRepository
    private let session: Session
    
    init(repository: UserRepository, session: Session) {
        self.repository = repository
        self.session = session
    }
    
    func invoke(completion: @escaping (User?) -> Void) {
        if let userUUID = session.userUUID {
            repository.observeUser(uuid: userUUID, completion: completion)
        } else {
            completion(nil)
        }
    }
}
