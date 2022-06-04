//
//  OnBoardView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2022-04-03.
//

import SwiftUI

struct OnBoardView: View {
    @State var showLoginView: Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            Text("Find the \nBest Furniture")
                .foregroundColor(colorBrown4)
                .font(.system(size: 40))
                .fontWeight(.semibold)

            Image("OnBord")
                .resizable()
                .aspectRatio(contentMode: .fit)

            Button {
                withAnimation {
                    showLoginView = true
                }
            } label: {
                Text("Get Started")
                    .foregroundColor(colorBrown1)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity)
                    .background(colorBrown4)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
            }
            .padding(.horizontal, 30)
            .offset(y: getRect().height < 750 ? 20 : 40)

            Spacer()

        }
        .padding()
        .padding(.top, getRect().height < 750 ? 0 : 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(colorBrown1)
        .overlay(
            Group {
                if showLoginView {
                    LogInView()
                        .transition(.move(edge: .bottom))
                }
            }
        )
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}

