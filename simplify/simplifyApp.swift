//
//  simplifyApp.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 11/22/21.
//

import SwiftUI

@main
struct simplifyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
