//
//  ControlView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 11/26/21.
//

import SwiftUI

struct ControlView: View {
    @Binding var isConcrolsVisibles: Bool
    
    var body: some View {
        VStack {
            ControlVisibilityToggleButton(isConcrolsVisibles: $isConcrolsVisibles)
            
            Spacer()
            
            if isConcrolsVisibles {
                ControlButtonBar()
            }
        }
    }
}

//struct ControlView_Previews: PreviewProvider {
//    static var previews: some View {
//        ControlView()
//            .background(Color.black.opacity(0.3))
//            .edgesIgnoringSafeArea(.all)
//    }
//}
