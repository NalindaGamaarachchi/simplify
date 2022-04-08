//
//  TabBar.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/24/22.
//

import SwiftUI

struct TabBar: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(backgroundColor)
        UITabBar.appearance().isHidden = false
      }
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            
            CategoryGridView()
                .tabItem {
                    Label("Category", systemImage: "list.bullet")
                }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                    //add custom cart lable
                }
            
            CartGridView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                    //add custom cart lable
                }
                
            
        }
        .accentColor(primaryColor)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .previewLayout(.sizeThatFits)
    }
}
