//
//  ProductItemView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import SwiftUI

struct ProductItemView: View {
    let product : Product
//    var animation: Namespace.ID
    
    var body: some View {

        VStack(alignment: .center) {
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20.0)
            
                    
                    
                Text(product.name)
                    .font(.system(size: 33).bold())
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                Text(product.description)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .truncationMode(.tail)
            
                Text("LKR \(Int(product.price))")
                    .font(.title2)
                    .fontWeight(.bold)

            
                
            }
        .padding(.horizontal, 10)
        .padding(.vertical, 12)
        .background(backgroundColor.cornerRadius(15))
    }
}

//struct ProductItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductItemView(product: Product(id: 01, name: "Chair 01", category: .chair, image: "chair_swan", price: 1000, description: "test description, test description, test description test description", scale: 1))
//            .previewLayout(.sizeThatFits)
//    }
//}
