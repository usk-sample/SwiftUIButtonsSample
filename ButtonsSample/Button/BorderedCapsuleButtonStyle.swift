//
//  BorderedCapsuleButtonStyle.swift
//  ButtonsSample
//
//  Created by Yusuke Hasegawa on 2021/06/07.
//

import SwiftUI

struct BorderedCapsuleButtonStyle: ButtonStyle {
        
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.white)
            .foregroundColor(.blue)
            .font(.body.bold())
            .overlay(Capsule().stroke(Color.blue, lineWidth: 2))
    }
}
