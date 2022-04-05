//
//  LoginTextField.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2022-04-03.
//

import SwiftUI

struct LoginTextField: View {
    @StateObject var loginData: LogInModel = LogInModel()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            //Login page Form
            VStack(spacing: 15) {
                Text(loginData.registerUser ? "Register" : "Login")
                    .font(.system(size: 25).bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //Custom text field
                CustomTextField(icon: "envelope", title: "Email", hint: "example@gmail.com", value: $loginData.email, showPassword: .constant(false))
                    .padding(.top, 30)
                
                CustomTextField(icon: "lock", title: "Password", hint: "password", value: $loginData.password, showPassword: $loginData.showPassword)
                    .padding(.top, 10)
                
                if loginData.registerUser {
                    CustomTextField(icon: "envelope", title: "Re Enter Password", hint: "password", value: $loginData.reEnterPassoerd, showPassword: $loginData.showReEnterPassword)
                        .padding(.top, 30)
                }
                
                Button {
                    if loginData.registerUser {
                        loginData.Register()
                    }else {
                        loginData.Login()
                    }
                } label: {
                    Text(loginData.registerUser ? "Register" : "Login")
                        .font(.system(size: 17).bold())
                        .padding(.vertical, 20)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(colorBrown4)
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
                }
                .padding(.top, 25)
                .padding(.horizontal)
                
                // Register User Button
                
                Button {
                    withAnimation {
                        loginData.registerUser.toggle()
                    }
                } label: {
                    Text(loginData.registerUser ? "Back to login" : "Create account")
                        .font(.system(size: 15).bold())
                        .foregroundColor(colorBrown4)
                }
                .padding(.top, 12)

            }
            .padding(30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
        .clipShape(CustomCorners(corners: [.topLeft, .topRight], radius: 25))
        .ignoresSafeArea()
    }
    
    @ViewBuilder
    func CustomTextField(icon: String, title: String, hint: String, value: Binding<String>, showPassword:Binding<Bool>) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Label {
                Text(title)
                    .font(.system(size: 15))
            } icon: {
                Image(systemName: icon)
            }
            .foregroundColor(Color.black.opacity(0.8))
            
            if title.contains("Password") && !showPassword.wrappedValue {
                SecureField(hint, text: value)
                    .padding(.top,2)
            } else {
                TextField(hint, text: value)
                    .padding(.top,2)
            }
            
            
            Divider()
                .background(Color.black.opacity(0.5))
        }
        
        // Show button for password field
        .overlay(
            Group {
                if title.contains("Password") {
                    Button(action: {
                        showPassword.wrappedValue.toggle()
                    }, label: {
                        Text(showPassword.wrappedValue ? "Hide" : "Show")
                            .font(.system(size: 12))
                            .foregroundColor(colorBrown4)
                    })
                        .offset(y: 8)
                }
            }
            ,alignment: .trailing
        )
    }
}

struct LoginTextField_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextField()
            .previewLayout(.sizeThatFits)
    }
}
