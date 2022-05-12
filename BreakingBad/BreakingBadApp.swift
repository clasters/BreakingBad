//
//  BreakingBadApp.swift
//  BreakingBad
//
//  Created by Mark on 5/12/22.
//

import SwiftUI

@main
struct BreakingBadApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
