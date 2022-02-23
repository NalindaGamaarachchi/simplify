//
//  CartControlView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/22/22.
//

import SwiftUI

struct CartControlView: View {
    @Binding var isConcrolsVisiblesCart: Bool
    @Binding var showCartList: Bool
    var body: some View {
        VStack {
            CartControlVisibilityToggleButton(isConcrolsVisiblesCart: $isConcrolsVisiblesCart)
            
            Spacer()
            
            if isConcrolsVisiblesCart {
                CartControlButtonBar(showCartList: $showCartList)
            }
        }
    }
}

//struct CartControlView_Previews: PreviewProvider {
//    static var previews: some View {
//        CartControlView(isConcrolsVisiblesCart: $isConcrolsVisiblesCart = true)
//    }
//}
