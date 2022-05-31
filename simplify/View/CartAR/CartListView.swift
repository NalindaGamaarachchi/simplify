//
//  CartListView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/23/22.
//

import SwiftUI
import RealityKit

struct CartListView: View {
    @EnvironmentObject var placementSettings: PlacementSettings
    @Binding var showCartList: Bool
    
    var body: some View {
        // after creating cart grid place that grid here chane only button action
        let productInCart = self.placementSettings.productInCart
        
            List {
                ForEach(productInCart) { product in
                    Button {
                        product.loadModelEntity()
                        self.placementSettings.selectedProduct = product
                        showCartList.toggle()
                    } label: {
                        CartItemView(product: product)
                    }
                }
            }
    }
            
}

//struct CartListView_Previews: PreviewProvider {
//    static var previews: some View {
//        CartListView()
//    }
//}
