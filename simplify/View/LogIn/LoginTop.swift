//
//  LoginTop.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2022-04-03.
//

import SwiftUI

struct LoginTop: View {
    var body: some View {
        Text("Welcome\nBack")
            .font(.system(size: 50).bold())
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: getRect().height /  3.5)
            .padding()
            .background(
                ZStack {
                    LinearGradient(colors: [colorBrown1, colorBrown2, colorBrown3, colorBrown4], startPoint: .top, endPoint: .bottom)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                        .padding(.trailing)
                        .offset(y: -25)
                        .ignoresSafeArea()
                    
                    Circle()
                        .strokeBorder(Color.white.opacity(0.3),lineWidth: 3)
                        .frame(width: 30, height: 30)
                        .blur(radius: 2)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                        .padding(30)
                    
                    Circle()
                        .strokeBorder(Color.white.opacity(0.3),lineWidth: 3)
                        .frame(width: 23, height: 23)
                        .blur(radius: 2)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.leading, 30)
                }
            )
    }
}

struct LoginTop_Previews: PreviewProvider {
    static var previews: some View {
        LoginTop()
            .previewLayout(.sizeThatFits)
    }
}
