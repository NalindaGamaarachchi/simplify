//
//  LogInModel.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2022-04-03.
//

import Foundation

class LogInModel: ObservableObject {
    
    //Login properties
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    // Register properties
    @Published var registerUser: Bool = false
    @Published var reEnterPassoerd: String = ""
    @Published var showReEnterPassword: Bool = false
    
    func Login() {
        // do action
    }
    
    func Register() {
        //Do action
    }
    
    func ForgotPassword() {
        //Do action
    }
}
