//
//  GliderApp.swift
//  Glider
//
//  Created by Toope Oladunjoye on 5/18/26.
//

import SwiftUI

@main
struct GliderApp: App {
    @Environment(\.openWindow) private var openWindow
    var body: some Scene {
        WindowGroup {
            ContentView()
                .toolbar(removing: .title)
                .containerBackground(.thinMaterial, for: .window)
        }
        
        WindowGroup(id: "Settings") {
            SettingsView()
                .toolbar(removing: .title)
                .containerBackground(.thinMaterial, for: .window)
        }
        
        .commands {
            CommandMenu("Window") {
                Button("Open Settings") {
                    openWindow(id: "Settings")
                }.keyboardShortcut(.init("k"), modifiers: .command)
            }
        }
    }
    
    #Preview {
        ContentView()
    }
}
