//
//  CategoryGridView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/28/22.
//

import SwiftUI

struct CategoryGridView: View {
    @State private var showProductGrid = false
    @State private var selectedCategory = categories[0]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout, spacing: rowSpacing) {
                    ForEach(categories) { category in
                        Button {
                            showProductGrid = true
                            selectedCategory = category
                        } label: {
                            CategoryItemView(category: category)
                        }
                    }
                    .background(
                        NavigationLink(isActive: $showProductGrid, destination: {
                            ProductGridView(category: selectedCategory)
                        }, label: {
                            EmptyView()
                        })
                    
                    )
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
 
