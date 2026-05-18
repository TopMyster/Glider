//
//  Key.swift
//  Glider
//
//  Created by Toope Oladunjoye on 5/18/26.
//

import SwiftUI

struct Key: View {
    var name: String
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Image(systemName: name)
                .font(.custom("key", size: 25))
                .frame(width: 55, height: 40)
        }.clipShape(.rect(cornerRadius: 12))
    }
}
