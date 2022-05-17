//
//  ProductModel.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import Foundation


import Foundation
import RealityKit
import Combine

class Product: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var category: Category
    var image: String
    var price: Float
    var description: String
    var scale: Float
    var modelEntity: ModelEntity?
    
    private var cancellable: AnyCancellable?
    
    init(id: Int, name: String, category: Category, image: String, price: Float, description: String, scale: Float) {
        self.id = id
        self.name = name
        self.category = category
        self.image = UIImage(named: name) ?? UIImage(systemName: "photo")!
        self.price = price
        self.description = description
        self.scale = scale
    }
    func loadModelEntity(){
        let fileName = self.image + ".usdz"
        self.cancellable = ModelEntity.loadModelAsync(named: fileName)
            .sink { loadCompletion in
                switch loadCompletion {
                case .failure(let error): print("ERROR: Unable to load modelEntity for \(fileName).Message: \(error.localizedDescription)")
                case .finished:
                    break
                }
            } receiveValue: { modelEntity in
                self.modelEntity = modelEntity
                self.modelEntity?.scale *= self.scale
                
                print("DEBUG: modelEntity for \(self.name) has been loaded")
            }

    }
}


