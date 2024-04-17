//
//  FeatureInjector.swift
//  invence
//
//  Created by Alexander William on 15/04/24.
//

import Foundation

class FeaturesContainer {
    
    // Content Feature
    lazy var contentFeature: ContentInjector = {
        ContentInjector()
    }()
}
