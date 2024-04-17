//
//  invenceApp.swift
//  invence
//
//  Created by Alexander William on 31/01/24.
//

import SwiftUI

@main
struct invenceApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DependencyContainer())
        }
    }
}
