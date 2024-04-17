//
//  LoginViewControlerr.swift
//  invence
//
//  Created by Alexander William on 15/04/24.
//

import Foundation
import FirebaseAuth
import GoogleSignIn

@MainActor
class LoginViewModel: ObservableObject {
    func signInGoogle() async throws {
        guard let topVC = ViewUtils.shared.topViewController() else {
            throw URLError(.cannotFindHost)
        }
        
        let gidSignInResult = try await GIDSignIn.sharedInstance.signIn(withPresenting: topVC)
        
        guard let idToken: String = gidSignInResult.user.idToken?.tokenString else {
            throw URLError(.badServerResponse)
        }
        let accessToken: String = gidSignInResult.user.accessToken.tokenString
        
        let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: accessToken)
        
        try await FirebaseAuthenticationManager.shared.signInWithGoogle(token: GoogleSignInResultModel(idToken: idToken, accessToken: accessToken))
    }
}
