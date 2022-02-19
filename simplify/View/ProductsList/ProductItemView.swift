//
//  ProductItemView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import SwiftUI

struct ProductItemView: View {
    let product : Product
    
    var body: some View {

            VStack(alignment: .center, spacing: 6) {
                Image(systemName: "photo.circle")
                    .frame(width: 50, height: 50, alignment: .center)
                    
                Text("LKR\(product.price)")
                    
                Text(product.name)

                Text(product.description)
            }
            .padding()
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Product(id: 01, name: "Chair 01", category: .chair, image: "chair_swan", price: 1000, description: "", scale: 1))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}