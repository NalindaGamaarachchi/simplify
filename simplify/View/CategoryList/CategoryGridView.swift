//
//  CategoryGridView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/28/22.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridLayout, spacing: rowSpacing) {
                ForEach(categories) { category in
                    CategoryItemView(category: category)
                }
            }
        }
    }
}
 
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
 
