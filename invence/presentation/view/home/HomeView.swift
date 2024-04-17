//
//  HomeScreen.swift
//  invence
//
//  Created by Alexander William on 11/04/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var toInventory: () -> Void
    
    var timeOfDay: String {
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: Date())

            switch hour {
            case 5..<12:
                return "Morning"
            case 12..<17:
                return "Afternoon"
            case 17..<20:
                return "Evening"
            case 20..<24, 0..<5:
                return "Night"
            default:
                return "Unknown"
            }
        }
    
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 16
        ){
            VStack(
                alignment: .leading,
                spacing: 16
            ) {
                HStack {
                    Text("Shift Calendar")
                        .font(.headline)
                        .foregroundColor(Color("neutral10"))
                    Spacer()
                    HStack {
                        Image(
                            systemName: "arrow.left"
                        )
                        .foregroundColor(Color("neutral10"))
                        Text("Date")
                            .font(.headline)
                            .foregroundColor(Color("neutral10"))
                        Image(
                            systemName: "arrow.right"
                        )
                        .foregroundColor(Color("neutral10"))
                        
                    }
                }
                .padding()
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: 200)
            .background(Color("primary"))
            .cornerRadius(16)
            HStack(spacing: 16) {
                Button(action: toInventory) {
                    Text("Inventory")
                        .frame(maxWidth: .infinity)
                        .padding(16)
                        .background(Color("secondary"))
                        .foregroundColor(Color("primary"))
                        .bold()
                        .cornerRadius(8)
                }
                Button(action: {}) {
                    Text("Order")
                        .frame(maxWidth: .infinity)
                        .padding(16)
                        .background(Color("secondary"))
                        .foregroundColor(Color("primary"))
                        .bold()
                        .cornerRadius(8)
                }
            }
            .layoutPriority(1)
            Text("Inbox")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Good " + timeOfDay)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}

#Preview {
    HomeView(toInventory: {})
}
