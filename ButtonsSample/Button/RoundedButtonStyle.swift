//
//  RoundedButtonStyle.swift
//  ButtonsSample
//
//  Created by Yusuke Hasegawa on 2021/06/07.
//

import SwiftUI

struct RoundedButtonStyle: ButtonStyle {
    
    var cornerRadius: CGFloat
    @Environment(\.isEnabled) var isEnabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(self.isEnabled ? Color.blue : Color.gray)
            .foregroundColor(.white)
            .font(.body.bold())
            .clipShape(RoundedRectangle.init(cornerRadius: self.cornerRadius))
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.easeOut(duration: 0.2))
    }
}
