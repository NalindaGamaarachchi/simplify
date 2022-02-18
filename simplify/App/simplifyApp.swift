//
//  simplifyApp.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 11/22/21.
//

import SwiftUI

@main
struct simplifyApp: App {
    @StateObject var placementSettings = PlacementSettings()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(placementSettings)
        }
    }
}
