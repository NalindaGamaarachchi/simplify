//
//  ProductDetailView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var placementSettings: PlacementSettings
    @State var product : Product
    @State var showProductAR = false
    var body: some View {
        //This view is just for test we need to create view for each one;
        VStack {
            Button {
                product.loadModelEntity()
                self.placementSettings.selectedProduct = product
                showProductAR = true
                
            } label: {
                Text("AR View")
            }
            Image(product.image)
            Text(product.name)
        }
        .background(
            NavigationLink(isActive: $showProductAR, destination: {
                ProductARView()
            }, label: {
                EmptyView()
            })
        
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Product(id: 01, name: "Chair 01", category: .chair, image: "chair_swan", price: 1000, description: "", scale: 1))
            .environmentObject(PlacementSettings())
    }
}
