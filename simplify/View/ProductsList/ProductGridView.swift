//
//  ProductGridView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import SwiftUI

struct ProductGridView: View {
    @State var category: Category
    @Binding var showProductGrid: Bool
     
    @State var showProductDetail = false
    @State var selectedProduct: Product = Product(name: "Chair 01", category: .chair, image: "chair_swan", price: 1000, description: "", scale: 1)
    
    @ObservedObject private var viewModel = ModelsViewModel()
    
    var body: some View {
        let productByCategory = viewModel.products.filter({$0.category == category})
        VStack {
            HStack {
                Button {
                    showProductGrid = false
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                        .foregroundColor(Color.black.opacity(0.8))
                        
                }
                Spacer()

            }
            .padding()
            
            ScrollView (){
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 25) {
                    ForEach(0..<productByCategory.count, id: \.self) { index in
                        let product = productByCategory[index]
                        Button {
                            showProductDetail.toggle()
                            selectedProduct = product
                        } label: {
                        ProductItemView(product: product)
                        }
                    }
                }
                .navigationBarHidden(true)
            }
            .padding()
        }
        .onAppear() {
            self.viewModel.fetchData()
        }
        
        NavigationLink(isActive: $showProductDetail, destination: {
            ProductDetailView(product: selectedProduct, showProductAR: showProductDetail)
    }, label: {
        EmptyView()
    })
    }
}

//struct ProductGridView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductGridView(category: Category.chair)
//            .previewLayout(.sizeThatFits)
//    }
//}
