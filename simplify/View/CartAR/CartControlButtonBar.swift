//
//  CartControlButtonBar.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/22/22.
//

import SwiftUI

struct CartControlButtonBar: View {
    @EnvironmentObject var placementSettings: PlacementSettings
    @Binding var showCartList: Bool
    var body: some View {
        HStack {
            Spacer()
            Button {
                print("DEBUG: recently Products button pressed")
            } label: {
                //We need to chanege this icon
                Image(systemName: "cube.fill")
                    .padding(15)
                    .font(.system(.title))
                    .foregroundColor(.white)
            }

            
            Spacer()
            
            Button {
                print("DEBUG: Similer Products button pressed")
                self.showCartList.toggle()
            } label: {
                Image(systemName: "slider.horizontal.3")
                    .padding(15)
                    .font(.system(.title))
                    .foregroundColor(.white)
            }
            .sheet(isPresented: $showCartList) {
                CartListView(showCartList: $showCartList)
            }
            
            Spacer()

        }
        .frame(maxWidth: 500)
        .padding()
    }
}

//struct CartControlButtonBar_Previews: PreviewProvider {
//    static var previews: some View {
//        CartControlButtonBar()
//    }
//}
