//
//  LogInView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2022-04-03.
//

import SwiftUI

struct LogInView: View {
    @StateObject var loginData: LogInModel = LogInModel()
    var body: some View {
        VStack {
            LoginTop()
            
            LoginTextField()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(colorBrown3)
    }
    

}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
