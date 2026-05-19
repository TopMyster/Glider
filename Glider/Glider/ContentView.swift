//
//  ContentView.swift
//  Glider
//
//  Created by Toope Oladunjoye on 5/18/26.
//

import SwiftUI

struct ContentView: View {
    @State private var muted = false
    @State private var viewMore = false
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                //Previous Key
                Key(name: "backward", action: {
                    
                })
                
                //Play/Pause Key
                Key(name: "playpause", action: {
                    
                })
                
                //Forward Key
                Key(name: "forward", action: {
                    
                })
                
                //Mute Key
                Key(name: "speaker.slash", action: {
                    mute()
                })
                
                //Volume Down Key
                Key(name: "speaker.wave.1", action: {
                    changeVolume(amount: -5)
                })
                
                //Volume Up Key
                Key(name: "speaker.wave.3", action: {
                    changeVolume(amount: 5)
                })
            }
            .padding(.top)
            .padding(.horizontal)
            if viewMore {
                HStack {
                    //Previous Key
                    Key(name: "backward", action: {
                        
                    })
                    
                    //Play/Pause Key
                    Key(name: "playpause", action: {
                        
                    })
                    
                    //Forward Key
                    Key(name: "forward", action: {
                        
                    })
                    
                    //Mute Key
                    Key(name: "speaker.slash", action: {
                        mute()
                    })
                    
                    //Volume Down Key
                    Key(name: "speaker.wave.1", action: {
                        changeVolume(amount: -5)
                    })
                    
                    //Volume Up Key
                    Key(name: "speaker.wave.3", action: {
                        changeVolume(amount: 5)
                    })
                }.padding()
                Button(action: {
                    viewMore = false
                }) {
                    Image(systemName: "control")
                }.padding(.bottom, 10).padding(.top, 2).buttonStyle(.plain)
            } else {
                Button(action: {
                    viewMore = true
                }) {
                    Image(systemName: "control").rotationEffect(.degrees(180))
                }.padding(.bottom, 5).padding(.top, 2).buttonStyle(.plain)
            }
        }
    }
    
    func changeVolume(amount: Int) {
        NSAppleScript(source: "set volume output volume ((output volume of (get volume settings)) + \(amount))")?.executeAndReturnError(nil)
    }
    
    func mute() {
        if muted == false {
            NSAppleScript(source: "set volume with output muted")?.executeAndReturnError(nil)
            muted = true
        } else {
            NSAppleScript(source: "set volume without output muted")?.executeAndReturnError(nil)
            muted = false
        }
    }
}

#Preview {
    ContentView()
}
