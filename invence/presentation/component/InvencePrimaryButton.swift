//
//  InvenceButton.swift
//  invence
//
//  Created by Alexander William on 11/04/24.
//

import Foundation
import SwiftUI

struct InvencePrimaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(Color("neutral10"))
                .padding(.vertical, 16)
                .padding(.horizontal, 32)
                .background(Color("primary"))
                .cornerRadius(24)
        }
        .frame(minWidth: 150, maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    InvencePrimaryButton(
        title: "Test Button",
        action: {}
    )
}
