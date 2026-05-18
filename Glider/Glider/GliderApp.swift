//
//  GliderApp.swift
//  Glider
//
//  Created by Toope Oladunjoye on 5/18/26.
//

import SwiftUI

@main
struct GliderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .toolbar(removing: .title)
                .containerBackground(.thinMaterial, for: .window)
                .toolbarBackgroundVisibility(.hidden, for: .windowToolbar)
        }.windowResizability(.contentSize).windowLevel(.floating)
        
        
        Settings {
            SettingsView()
                .toolbar(removing: .title)
                .containerBackground(.thinMaterial, for: .window)
                .toolbarBackgroundVisibility(.hidden, for: .windowToolbar)
        }
    }
}
