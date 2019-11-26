//
//  CustomAnimation07.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct CustomAnimation07: View {
  
  @State private var animationAmount: CGFloat = 1

  var body: some View {
    Button("Tap Me") {
        // self.animationAmount += 1
    }
    .padding(40)
    .background(Color.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .overlay(
        Circle()
            .stroke(Color.red)
            .scaleEffect(animationAmount)
            .opacity(Double(2 - animationAmount))
            .animation(
                Animation.easeOut(duration: 1)
                    .repeatForever(autoreverses: false)
            )
    )
    .onAppear {
        self.animationAmount = 2
    }
  }
}

struct CustomAnimation07_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnimation07()
    }
}
