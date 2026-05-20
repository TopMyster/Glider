//
//  Key.swift
//  Glider
//
//  Created by Toope Oladunjoye on 5/18/26.
//

import SwiftUI

struct Widget: View {
    var text: String
    var action: () -> Void
    var icon: String
    var tint: Color
    var body: some View {
        Button(action: action) {
            Label("\(text)", systemImage: icon)
                .font(.custom("Widget", size: 25))
                .frame(width: 150, height: 40)
        }.clipShape(.rect(cornerRadius: 14)).tint(tint)
    }
}
