//
//  PlacementSettings.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/18/22.
//

import SwiftUI
import RealityKit
import Combine

class PlacementSettings: ObservableObject {
    
    @Published var selectedProduct: Product? {
        willSet(newValue) {
            print("DEBUG: Setting selectedModel to \(String(describing: newValue?.name))")
        }
    }
    
    @Published var confirmedProduct: Product? {
        willSet(newValue) {
            guard let product = newValue else {
                print("DEBUG: Clearing confirmed Product")
                return
            }
            print("DEBUG: Setting confirmed product to \(product.name)")
            self.placedProduct = product
        }
    }
    var sceneObserver: Cancellable?
    
    @Published var placedProduct: Product?
    
    @Published var productInCart: [Product] = []
}
