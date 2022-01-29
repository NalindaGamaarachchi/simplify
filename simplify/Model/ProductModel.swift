//
//  ProductModel.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let category: String
    let image: String
    let price: Int
    let description: String
}
