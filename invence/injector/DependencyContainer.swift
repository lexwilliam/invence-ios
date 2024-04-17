//
//  DependencyContainer.swift
//  invence
//
//  Created by Alexander William on 15/04/24.
//

import Foundation

class DependencyContainer: ObservableObject {
    var features: FeaturesContainer
    
    init() {
        self.features = FeaturesContainer()
    }
}
