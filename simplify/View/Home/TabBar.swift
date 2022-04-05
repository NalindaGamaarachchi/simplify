//
//  TabBar.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/24/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("home", systemImage: "house")
                }
            
            CategoryGridView()
                .tabItem {
                    Label("home", systemImage: "house")
                }
            
            SearchView()
                .tabItem {
                    Label("home", systemImage: "house")
                }
            
            CartGridView()
                .tabItem {
                    Label("home", systemImage: "house")
                    //add custom cart lable
                }
            ProfileView()
                .tabItem {
                    Label("home", systemImage: "house")
                    //add custom cart lable
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
