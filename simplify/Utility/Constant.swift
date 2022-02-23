//
//  Constant.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/28/22.
//

import Foundation
import SwiftUI

//DATA
//let categories: [Category] = Bundle.main.decode("category.json")
//let products: [Product] = Bundle.main.decode("product.json")



//LAYOUT
let columSpacing: CGFloat = 20
let rowSpacing: CGFloat = 20
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: columSpacing), count: 2)
} 

var cartGridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: columSpacing), count: 1)
}
