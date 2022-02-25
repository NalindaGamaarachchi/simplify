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

        VStack(alignment: .leading, spacing: 6) {
                Image(product.image)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .cornerRadius(20.0)
                    
                Text(product.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                Text(product.description)
                    .font(.body)
                    .fontWeight(.ultraLight)
            
                HStack {
                    //create a binding var called rating (INT) and pass in to for each loop
                    ForEach(0..<5) { star in
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                            .frame(width: 10, height: 10)
                            .padding(2)
                    }
                    Spacer()
                    
                    Text("LKR \(Int(product.price))")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                
            }
            .frame(width: 250, height: 400)
            .padding()
            .background(Color.white)
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Product(id: 01, name: "Chair 01", category: .chair, image: "chair_swan", price: 1000, description: "test description, test description, test description test description", scale: 1))
            .previewLayout(.sizeThatFits)
    }
}
