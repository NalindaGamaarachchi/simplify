//
//  CategoryItemView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/28/22.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    
    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            Image(systemName: "photo.circle")
                .frame(width: 50, height: 50, alignment: .center)
                
            Text(category.name)
                .fontWeight(.light)
        }
        .padding()
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[4])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
