//
//  ProductGridView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import SwiftUI

struct ProductGridView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridLayout, spacing: rowSpacing) {
                ForEach(products) { product in
                    ProductItemView(product: product)
                }
            }
        }
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
