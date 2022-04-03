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

//COLOR
let primaryColor: Color = Color("Primary")
let backgroundColor: Color = Color("Bg")

let colorBrown1: Color = Color("colorBrown1")
let colorBrown2: Color = Color("colorBrown2")
let colorBrown3: Color = Color("colorBrown3")
let colorBrown4: Color = Color("colorBrown4")

