//
//  ProductGridView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import SwiftUI

struct ProductGridView: View {
    @State var category: Category
    @State var showProductDetail = false
    @State var selectedProduct: Product = Product(id: 01, name: "Chair 01", category: .chair, image: "chair_swan", price: 1000, description: "", scale: 1)
    let testModel = TestModels()
    
    var body: some View {
        let productByCategory = testModel.get(category: category)
        NavigationView {
            ScrollView (){
                LazyVGrid(columns: gridLayout, spacing: rowSpacing) {
                    ForEach(0..<productByCategory.count) { index in
                        let product = productByCategory[index]
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
        .navigationTitle(category.label)
    }
}

//struct ProductGridView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductGridView(category: Category.chair)
//            .previewLayout(.sizeThatFits) 
//            .padding()
//    }
//}
