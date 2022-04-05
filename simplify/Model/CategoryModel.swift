//
//  CategoryModel.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/28/22.
//

import Foundation

//struct Category: Codable, Identifiable {
//    let id: Int
//    let name: String
//    let image: String
//}

enum Category: CaseIterable {
    case chair
    case table
    case sofa
    case bed
    case bedsideCupboard
    case TV
    case frige
    case decoration

    var label: String {
        get {
            switch self {
            case .chair:
                return "Chair"
            case .table:
                return "Table"
            case .sofa:
                return "Sofa"
            case .bed:
                return "Bed"
            case .bedsideCupboard:
                return "Bedside Cupboard"
            case .TV:
                return "TV"
            case .frige:
                return "Fridge"
            case.decoration:
                return "Decoration"
            }
        }
    }
}

extension Category: Identifiable {
    var id: Self { self }
}
