//
//  ProductDetailView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import SwiftUI

struct ProductDetailView: View {
    @State var product : Product
    var body: some View {
        //This view is just for test we need to create view for each one;
        VStack {
            Button {
                //
            } label: {
                Text("AR View")
            }
            Image(product.image)
            Text(product.name)
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Product(id: 01, name: "Chair 01", category: .chair, image: "chair_swan", price: 1000, description: "", scale: 1))
    }
}
