//
//  PlaygroundsApp.swift
//  Playgrounds
//
//  Created by Mia Yv on 2023-09-25.
//
import SwiftUI

@main
struct PlaygroundsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
        }
        .windowStyle(.hiddenTitleBar)
    }
}
