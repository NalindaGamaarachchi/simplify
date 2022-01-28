//
//  CategoryModel.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/28/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
