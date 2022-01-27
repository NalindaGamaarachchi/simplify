//
//  ControlVisibilityToggleButton.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 11/26/21.
//

import SwiftUI

struct ControlVisibilityToggleButton: View {
    @Binding var isConcrolsVisibles: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                print("DEBUG: Visibility control button pressed")
                isConcrolsVisibles.toggle()
            } label: {
                Image(systemName: isConcrolsVisibles ? "rectangle.portrait.bottomthird.inset.filled" : "rectangle.portrait")
                    .padding()
                    .font(.system(.title))
                    .foregroundColor(.white)

            }
        }
        .padding(.top, 50)
        .padding(.trailing)
    }
}

//struct ControlVisibilityToggleButton_Previews: PreviewProvider {
//    static var previews: some View {
//        ControlVisibilityToggleButton()
//            .previewLayout(.sizeThatFits)
//            .background(Color.black.opacity(0.5))
//    }
//}
