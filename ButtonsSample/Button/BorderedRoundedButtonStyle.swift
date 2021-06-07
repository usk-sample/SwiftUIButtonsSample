//
//  BorderedRoundedButtonStyle.swift
//  ButtonsSample
//
//  Created by Yusuke Hasegawa on 2021/06/07.
//

import SwiftUI

struct BorderedRoundedButtonStyle: ButtonStyle {
    
    var cornerRadius: CGFloat

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.white)
            .foregroundColor(.blue)
            .font(.body.bold())
            .overlay(RoundedRectangle(cornerRadius: self.cornerRadius)
                           .stroke(Color.blue, lineWidth: 2))
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.easeOut(duration: 0.2))
    }
    
}
