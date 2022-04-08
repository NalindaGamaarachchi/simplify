//
//  CartItemView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/22/22.
//

import SwiftUI

struct CartItemView: View {
    let product : Product
    var body: some View {
        HStack(spacing: 15) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            VStack {
                Text(product.name)
                    .font(.system(size: 18).bold())
                    .lineLimit(1)
                
                Text("\(product.category.label)")
                    .font(.system(size: 16))
            }
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 10)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white.cornerRadius(10))
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(product: Product(id: 01, name: "Chair 01", category: .chair, image: "chair_swan", price: 1000, description: "test description, test description, test description test description", scale: 1))
            .previewLayout(.sizeThatFits)
    }
}
