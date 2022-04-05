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
        VStack {
            Image(category.label)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: getRect().width / 2.5, height: getRect().height / 5)
                
            Text(category.label)
                .font(.system(size: 23).bold())
                .frame(width: getRect().width / 2.5, height: getRect().height / 20)
                .background(colorBrown4)
                .clipShape(CustomCorners(corners: [.topLeft, .topRight], radius: 10))
            
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 12)
        .background(backgroundColor.cornerRadius(15))
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: Category.chair)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
