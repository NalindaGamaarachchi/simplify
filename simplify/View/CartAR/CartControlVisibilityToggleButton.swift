//
//  CartControlVisibilityToggleButton.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/22/22.
//

import SwiftUI

struct CartControlVisibilityToggleButton: View {
    @Binding var isConcrolsVisiblesCart: Bool
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                print("DEBUG: Visibility control button pressed")
                isConcrolsVisiblesCart.toggle()
            } label: {
                Image(systemName: isConcrolsVisiblesCart ? "rectangle.portrait.bottomthird.inset.filled" : "rectangle.portrait")
                    .padding()
                    .font(.system(.title))
                    .foregroundColor(.white)

            }
        }
        .padding(.top, 50)
        .padding(.trailing)
    }
    
}

//struct CartControlVisibilityToggleButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CartControlVisibilityToggleButton(isConcrolsVisiblesCart: self.isConcrolsVisiblesCart = true)
//    }
//}
