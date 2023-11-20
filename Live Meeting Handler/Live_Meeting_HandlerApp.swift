//
//  Live_Meeting_HandlerApp.swift
//  Live Meeting Handler
//
//  Created by Hayreddin Tüzel on 20.11.23.
//

import SwiftUI
import SwiftData

@main
struct Live_Meeting_HandlerApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
