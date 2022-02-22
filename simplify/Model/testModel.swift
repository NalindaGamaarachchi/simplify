//
//  testModel.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/12/22.
//

import Foundation
import RealityKit
// after we add firebase this file will be deleted 
struct TestModels {
    var all: [Product] = []
    
    init() {
        
        let chair1 = Product(id: 01, name: "Chair 01", category: .chair, image: "chair_swan", price: 1000, description: "", scale: 0.25)
        let chair2 = Product(id: 02, name: "Chair 02", category: .chair, image: "fender_stratocaster", price: 1000, description: "", scale: 0.25)
        let chair3 = Product(id: 03, name: "Chair 03", category: .chair, image: "flower_tulip", price: 1000, description: "", scale: 0.25)
        let chair4 = Product(id: 04, name: "Chair 04", category: .chair, image: "chair", price: 1000, description: "", scale: 0.25)
        self.all += [chair1, chair2, chair3, chair4]
        
        let table1 = Product(id: 05, name: "Table 01", category: .table, image: "table", price: 1000, description: "", scale: 1)
        let table2 = Product(id: 06, name: "Table 02", category: .table, image: "table", price: 1000, description: "", scale: 1)
        let table3 = Product(id: 07, name: "Table 03", category: .table, image: "table", price: 1000, description: "", scale: 1)
        let table4 = Product(id: 08, name: "Table 04", category: .table, image: "table", price: 1000, description: "", scale: 1)
        self.all += [table1, table2, table3, table4]
        
        let sofa1 = Product(id: 09, name: "Sofa 01", category: .sofa, image: "sofa", price: 1000, description: "", scale: 1)
        let sofa2 = Product(id: 10, name: "Sofa 02", category: .sofa, image: "sofa", price: 1000, description: "", scale: 1)
        let sofa3 = Product(id: 11, name: "Sofa 03", category: .sofa, image: "sofa", price: 1000, description: "", scale: 1)
        let sofa4 = Product(id: 12, name: "Sofa 04", category: .sofa, image: "sofa", price: 1000, description: "", scale: 1)
        self.all += [sofa1, sofa2, sofa3, sofa4]
    }
    func get(category: Category) -> [Product] {
        return all.filter({$0.category == category})
    }
}
