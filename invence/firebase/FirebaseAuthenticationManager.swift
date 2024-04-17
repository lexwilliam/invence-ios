//
//  FirebaseAuthenticationManager.swift
//  invence
//
//  Created by Alexander William on 15/04/24.
//

import Foundation
import FirebaseAuth

struct Session {
    let userUUID: String?
    
    init(userUUID: String? = nil) {
        self.userUUID = userUUID
    }
    
    static func fromFirebaseUser(user: FirebaseAuth.User) -> Session {
        return Session(userUUID: user.uid)
    }
}

struct GoogleSignInResultModel {
    let idToken: String
    let accessToken: String
}

final class FirebaseAuthenticationManager {
    static let shared = FirebaseAuthenticationManager()
    private init() {}
    
    func getSession() -> Session {
        guard let user = Auth.auth().currentUser else {
            return Session()
        }
        return Session.fromFirebaseUser(user: user)
    }
    
    func signOut() throws {
        try Auth.auth().signOut()
    }
}

// Sign In With Google
extension FirebaseAuthenticationManager {
    @discardableResult
    func signInWithGoogle(token: GoogleSignInResultModel) async throws -> Session {
        let credential = GoogleAuthProvider.credential(withIDToken: token.idToken, accessToken: token.accessToken)
        return try await signIn(credential: credential)
    }
    
    func signIn(credential: AuthCredential) async throws -> Session {
        let result = try await Auth.auth().signIn(with: credential)
        return Session(userUUID: result.user.uid)
    }
}
