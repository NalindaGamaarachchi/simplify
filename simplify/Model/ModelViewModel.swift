//
//  ModelViewModel.swift
//  simplify
//
//  Created by Malinda Kavishka on 2022-05-17.
//

import Foundation
import FirebaseFirestore

class ModelsViewModel: ObservableObject {
    @Published var products: [Product] = []
    
    private let db = Firestore.firestore()
    
    func fetchData() {
        db.collection("products").addSnapshotListener { querSnapshot, error in
            guard let documents = querSnapshot?.documents else {
                print("Firestore: No documents")
                return
            }
            self.products = documents.map({ (queryDocumentSnapshot) -> Product in
                let data = queryDocumentSnapshot.data()
                
                let name = data["name"] as? String ?? ""
                let categoryText = data["category"] as? String ?? ""
                let category = ModelCategory(rawValue: categoryText) ?? .chair
                
                let price = data["price"] as? Double ?? 100
                let description = data["description"] as? String ?? "no description"
                
                let scale = data["scale"] as? Double ?? 1.0
                
                return Model(name: name, category: category, price :Float(price), description: description, scale: Float(scale))
            })
        }
    }
    
}

