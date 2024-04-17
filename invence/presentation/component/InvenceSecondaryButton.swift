//
//  InvenceSecondaryButton.swift
//  invence
//
//  Created by Alexander William on 11/04/24.
//

import Foundation

import Foundation
import SwiftUI

struct InvenceSecondaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(Color("primary"))
                .padding(.vertical, 16)
                .padding(.horizontal, 32)
                .background(Color("neutral10"))
                .cornerRadius(24)
                .overlay(
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(Color("primary"), lineWidth: 2)
                )
        }
    }
}

#Preview {
    InvenceSecondaryButton(
        title: "Test Button",
        action: {}
    )
}
