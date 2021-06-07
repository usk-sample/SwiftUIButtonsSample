//
//  ContentView.swift
//  ButtonsSample
//
//  Created by Yusuke Hasegawa on 2021/06/07.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        VStack {
            Button("Default", action: { })
                .buttonStyle(DefaultButtonStyle())
                .padding()
            Button("Plain", action: { })
                .buttonStyle(PlainButtonStyle())
                .padding()
            Button("Borderless", action: { })
                .buttonStyle(BorderlessButtonStyle())
                .padding()
            Button("Rounded", action: { })
                .buttonStyle(RoundedButtonStyle(cornerRadius: 8.0))
            Button("Capsule", action: { })
                .buttonStyle(CapsuleButtonStyle())
            Button("Rounded Border", action: { })
                .buttonStyle(BorderedRoundedButtonStyle(cornerRadius: 8.0))
            Button("Capsule Border", action: { })
                .buttonStyle(BorderedCapsuleButtonStyle())
        }.frame(width: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
