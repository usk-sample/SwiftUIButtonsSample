//
//  CapsuleButtonStyle.swift
//  ButtonsSample
//
//  Created by Yusuke Hasegawa on 2021/06/07.
//

import SwiftUI

struct CapsuleButtonStyle: ButtonStyle {
        
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.body.bold())
            .clipShape(Capsule())
    }
}
