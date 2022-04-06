//
//  SharedDataModel.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2022-04-06.
//

import SwiftUI

class SharedDataModel: ObservableObject {
    @Published var showProductGrid: Bool = false
    @Published var selectedCategory: Category = Category.sofa
}


