//
//  CartARView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/21/22.
//

import SwiftUI

struct CartARView: View {
    @EnvironmentObject var placementSettings: PlacementSettings
    @State private var isConcrolsVisiblesCart: Bool = true
    @State private var showCartList: Bool = true
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            ARViewContainer()
            
            if self.placementSettings.selectedProduct == nil {
                CartControlView(isConcrolsVisiblesCart: $isConcrolsVisiblesCart, showCartList: $showCartList)
            }else {
                PlacementARView()
            }
        }
        .navigationBarHidden(true)
    }
}

struct CartARView_Previews: PreviewProvider {
    static var previews: some View {
        CartARView()
            .background(Color.black.opacity(0.3))
            .edgesIgnoringSafeArea(.all)
            .environmentObject(PlacementSettings())
    }
}
