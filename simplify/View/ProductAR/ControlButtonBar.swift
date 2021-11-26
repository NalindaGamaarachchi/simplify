//
//  ControlButtonBar.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 11/26/21.
//

import SwiftUI

struct ControlButtonBar: View {
    var body: some View {
        HStack {
            Button {
                print("DEBUG: Similer Products button pressed")
            } label: {
                //We need to chanege this icon
                Image(systemName: "cube.fill")
                    .padding(15)
                    .clipShape(Capsule())
                    .font(.system(.title))
                    .foregroundColor(.white)
            }

            Spacer()
            
            Button {
                print("DEBUG: Add to cart button pressed")
            } label: {
                HStack {
                    Text("Add to Cart")
                    Image(systemName: "cart")
                }
                .padding(15)
                .background(Color.blue.opacity(0.5))
                .clipShape(Capsule())
                .font(.system(.title2))
                .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                print("DEBUG: Change color pressed")
            } label: {
                Image(systemName: "slider.horizontal.3")
                    .padding(15)
                    .clipShape(Capsule())
                    .font(.system(.title))
                    .foregroundColor(.white)
            }


        }
        .frame(maxWidth: 500)
        .padding()
    }
}

struct ControlButtonBar_Previews: PreviewProvider {
    static var previews: some View {
        ControlButtonBar()
            .previewLayout(.sizeThatFits)
            .background(Color.black.opacity(0.5))
    }
}
