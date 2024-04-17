//
//  AppViewModel.swift
//  invence
//
//  Created by Alexander William on 15/04/24.
//

import Foundation
import FirebaseAuth

class AppViewModel: ObservableObject {
    private var _observeUserUseCase: ObserveUserUseCase
    
    init(_observeUserUseCase: ObserveUserUseCase) {
        self._observeUserUseCase = _observeUserUseCase
    }
    
    func observeUser(uuid: String, callback: @escaping (User?) -> Void) {
      _observeUserUseCase.invoke(uuid: uuid) { user in
          callback(user)
      }
    }
}
