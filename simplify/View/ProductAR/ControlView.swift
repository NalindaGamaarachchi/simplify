//
//  ControlView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 11/26/21.
//

import SwiftUI

struct ControlView: View {
    @Binding var isConcrolsVisibles: Bool
    @EnvironmentObject var placementSettings: PlacementSettings
    
    var body: some View {
        VStack {
            ControlVisibilityToggleButton(isConcrolsVisibles: $isConcrolsVisibles)
            
            Spacer()
            
            if isConcrolsVisibles {
                ControlButtonBar(product: placementSettings.placedProduct ?? Product(name: "Chair 03", category: .chair, image: "chair_swa", price: 1000, description: "kfjef hfkjashfkjashf kah fjahsfk asjhfkashjf ajshfkasjfh kajshf ksaf", scale: 1))
            }
        }
    }
}

//struct ControlView_Previews: PreviewProvider {
//    static var previews: some View {
//        ControlView(isConcrolsVisibles: true)
//            .background(Color.black.opacity(0.3))
//            .edgesIgnoringSafeArea(.all)
//    }
//}
