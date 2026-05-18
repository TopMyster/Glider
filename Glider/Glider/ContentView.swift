//
//  ContentView.swift
//  Glider
//
//  Created by Toope Oladunjoye on 5/18/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            //Mute Key
            Key(name: "speaker.slash", action: {
                
            })
            
            //Volume Down Key
            Key(name: "speaker.wave.1", action: {
                
            })
            
            //Volume Up Key
            Key(name: "speaker.wave.3", action: {
                
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
