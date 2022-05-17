//
//  simplifyApp.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 11/22/21.
//

import SwiftUI
import Firebase

@main
struct simplifyApp: App {
    @StateObject var placementSettings = PlacementSettings()
    
    init() {
        FirebaseApp.configure()
        
        // Anonymous authentication with Firebase
        Auth.auth().signInAnonymously { authResult, error in
            guard let user = authResult?.user else {
                print("FAILED: Anonymous Authentication with Firebase")
                return
            }
            let uid = user.uid
            print("Firebase: Anonymous user authentication with uid: \(uid)")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(placementSettings)
        }
    }
}
