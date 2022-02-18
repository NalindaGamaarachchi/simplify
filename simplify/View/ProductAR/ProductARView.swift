//
//  ProductARView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 11/26/21.
//

import SwiftUI
import RealityKit

struct ProductARView: View {
    @EnvironmentObject var placementSettings: PlacementSettings
    @State private var isConcrolsVisibles: Bool = true
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            ARViewContainer()
            
            if self.placementSettings.selectedProduct == nil {
                ControlView(isConcrolsVisibles: $isConcrolsVisibles)
            }else {
                PlacementARView()
            }
            
        }
    }
}

struct ProductARView_Previews: PreviewProvider {
    static var previews: some View {
        ProductARView()
            .background(Color.black.opacity(0.3))
            .edgesIgnoringSafeArea(.all)
            .environmentObject(PlacementSettings())
    }
}
