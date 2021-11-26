//
//  ProductARView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 11/26/21.
//

import SwiftUI
import RealityKit

struct ProductARView: View {
    var body: some View {
        VStack {
            ControlVisibilityToggleButton()
            
            Spacer()
            
            ControlButtonBar()
        }
    }
}

struct ProductARView_Previews: PreviewProvider {
    static var previews: some View {
        ProductARView()
    }
}
