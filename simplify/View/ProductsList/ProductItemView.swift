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
                    .padding()
                    
                Text(product.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                Text(product.description)
                .font(.caption)
                .foregroundColor(.gray)
                    .lineLimit(2)
                    .truncationMode(.tail)
            
                HStack {
                    //create a binding var called rating (INT) and pass in to for each loop
//                    ForEach(0..<5) { star in
//                        Image(systemName: "star.fill")
//                            .foregroundColor(Color.yellow)
//                            .frame(width: 10, height: 10)
//                            .padding(2)
//                    }
                    
                    
                    Text("LKR \(Int(product.price))")
                        .font(.title2)
                        .fontWeight(.bold)
                }
            
                
            }
            .padding()
            .background(Color.white)
            .cornerRadius(15)
            .frame(width: 250, height: 250)
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Product(id: 01, name: "Chair 01", category: .chair, image: "chair_swan", price: 1000, description: "test description, test description, test description test description", scale: 1))
            .previewLayout(.sizeThatFits)
    }
}
