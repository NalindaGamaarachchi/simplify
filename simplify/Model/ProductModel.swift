//
//  ProductModel.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import Foundation


import Foundation
import RealityKit

class Product {
    var id: Int
    var name: String
    var category: Category
    var image: String
    var price: Float
    var description: String
    var scale: Float
    var modelEntity: ModelEntity?
    
    init(id: Int, name: String, category: Category, image: String, price: Float, description: String, scale: Float) {
        self.id = id
        self.name = name
        self.category = category
        self.image = image
        self.price = price
        self.description = description
        self.scale = scale
    }
}


