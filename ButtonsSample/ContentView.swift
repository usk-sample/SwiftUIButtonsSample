//
//  ContentView.swift
//  ButtonsSample
//
//  Created by Yusuke Hasegawa on 2021/06/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var capsuleEnabled: Bool = true
    @State var borderCapsuleEnabled: Bool = true
    @State var enabled: Bool = true
    
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
            Button("Capsule", action: {
                self.capsuleEnabled = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.capsuleEnabled = true
                }
            }).disabled(!self.capsuleEnabled)
                .buttonStyle(CapsuleButtonStyle())
            Button("Rounded Border", action: { })
                .buttonStyle(BorderedRoundedButtonStyle(cornerRadius: 8.0))
            Button("Capsule Border", action: {
                self.borderCapsuleEnabled = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.borderCapsuleEnabled = true
                }
            }).disabled(!self.borderCapsuleEnabled)
                .buttonStyle(BorderedCapsuleButtonStyle())
            Group {
                Button("Rounded 1", action: {
                    self.enabled = false
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        self.enabled = true
                    }
                }).disabled(!self.enabled)
                Button("Rounded 2", action: { })
            }
            .buttonStyle(RoundedButtonStyle(cornerRadius: 8.0))

        }.frame(width: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
