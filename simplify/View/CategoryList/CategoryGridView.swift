//
//  CategoryGridView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/28/22.
//

import SwiftUI

struct CategoryGridView: View {
    @State var showProductGrid: Bool = false
    @State var selectedCategory = Category.sofa
    
    
    var body: some View {
        NavigationView {
            ScrollView {                                                                                                      
                VStack {
                    
                    //
                    Text("Select your\nCategory")
                        .font(.system(size: 50).bold())
                        .foregroundColor(colorBrown4)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        
                    Divider()
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 25) {
                        ForEach(Category.allCases) { category in
                            CategoryItemView(category: category)
                                .onTapGesture {
                                    withAnimation (.spring()) {
                                        selectedCategory = category
                                        showProductGrid.toggle()
                                    }
                                }
                        }
                        
                        
                    }
                    NavigationLink(destination: ProductGridView(category: selectedCategory, showProductGrid: $showProductGrid), isActive: $showProductGrid) {EmptyView()}
                }
                .navigationBarHidden(true)
            }
            

        }
    }
}
 
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
 
