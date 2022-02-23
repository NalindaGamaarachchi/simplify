//
//  CategoryGridView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/28/22.
//

import SwiftUI

struct CategoryGridView: View {
    @State  var showProductGrid = false
    @State  var selectedCategory = Category.sofa
    
    var body: some View {
        NavigationView {
            ScrollView {
                    NavigationLink {
                        CartARView()
                    } label: {
                        Text("cart")
                    }

                

                LazyVGrid(columns: gridLayout, spacing: rowSpacing) {
                    ForEach(Category.allCases) { category in
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
 
