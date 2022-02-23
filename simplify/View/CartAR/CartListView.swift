//
//  CartListView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/23/22.
//

import SwiftUI

struct CartListView: View {
    @EnvironmentObject var placementSettings: PlacementSettings
    @Binding var showCartList: Bool
    
    var body: some View {
        // after creating cart grid place that grid here chane only button action
        let cartProducts = placementSettings.productInCart
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyVGrid(columns: cartGridLayout, spacing: rowSpacing) {
                    ForEach(0..<cartProducts.count) { index in
                        let product = cartProducts[index]
                        Button {
                            print(product.name)
                        } label: {
                            Image(systemName: product.image)
                                    .resizable()
                                    .frame(width: 300, height: 100)
                            
                        }

                        
                    }
                }
                .padding()
            }
            .navigationBarTitle(Text("cart list"))
            .navigationBarItems(trailing: Button(action: {
                self.showCartList.toggle()
            }, label: {
                Text("Done")
            }))
        }
    }
}

//struct CartListView_Previews: PreviewProvider {
//    static var previews: some View {
//        CartListView()
//    }
//}
