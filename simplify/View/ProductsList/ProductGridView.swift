//
//  ProductGridView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import SwiftUI

struct ProductGridView: View {
    @State var category: Category
    @State private var showProductDetail = false
    @State private var selectedProduct = products[0]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout, spacing: rowSpacing) {
                    ForEach(products) { product in //need a way to filter products by category
                        Button {
                            showProductDetail = true
                            selectedProduct = product
                        } label: {
                            ProductItemView(product: product)
                        }
                        
                    }
                    .background(
                        NavigationLink(isActive: $showProductDetail, destination: {
                            ProductDetailView(product: selectedProduct)
                        }, label: {
                            EmptyView()
                        })
                    
                    )
                }
            }
        }
        .navigationTitle(category.name)
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView(category: categories[0])
            .previewLayout(.sizeThatFits) 
            .padding()
    }
}
