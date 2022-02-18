//
//  PlacementARView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/18/22.
//

import SwiftUI

struct PlacementARView: View {
    @EnvironmentObject var placementSettings: PlacementSettings
    var body: some View {
        HStack {
            Spacer()
            
            PlacementButton(iconName: "xmark.circle.fill") {
                print("DEBUG: Cancel Placement button pressed")
                self.placementSettings.selectedProduct = nil
            }
            
            Spacer()
            
            PlacementButton(iconName: "checkmark.circle.fill") {
                print("DEBUG: Confirm placement btton pressed")
                self.placementSettings.confirmedProduct = self.placementSettings.selectedProduct
                self.placementSettings.selectedProduct = nil
            }
            
            Spacer()
        }
        .padding(.bottom, 30)
    }
}

struct PlacementButton: View {
    let iconName: String
    let action: () -> Void
    var body: some View {
        
        Button {
            self.action()
        } label: {
            Image(systemName: iconName)
                .font(.system(size: 50, weight: .light, design: .default))
                .foregroundColor(.white)
                .buttonStyle(PlainButtonStyle())
        }
        .frame(width: 75, height: 75)

    }
}

struct PlacementARView_Previews: PreviewProvider {
    static var previews: some View {
        PlacementARView()
    }
}
