//
//  LoginView.swift
//  invence
//
//  Created by Alexander William on 11/04/24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        ZStack {
            VStack(
                alignment: .leading,
                spacing: 16
            ) {
                Text("Invence")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(Color("primary"))
                Text("Streamline inventory, warehousing, and boost efficiency with user-friendly controls for real-time tracking and order fulfillment")
                Spacer()
                InvenceSecondaryButton(
                    title: "Sign in With Google", action: {
                        Task {
                            do {
                                try await viewModel.signInGoogle()
                            } catch {
                                print(error)
                            }
                        }
                    }
                )
                .frame(maxWidth: .infinity)
            }
            .padding()
            .padding(.vertical, 100)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("secondary"))
    }
}

#Preview {
    LoginView()
}
