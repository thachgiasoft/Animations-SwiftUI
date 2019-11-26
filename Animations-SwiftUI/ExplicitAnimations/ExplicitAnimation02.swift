//
//  ExplicitAnimation02.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct ExplicitAnimation02: View {
  @State private var animationAmount = 0.0

  var body: some View {
    Button("Tap Me") {
      withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
        self.animationAmount += 360
      }
    }
    .padding(50)
    .background(Color.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
  }
}

struct ExplicitAnimation02_Previews: PreviewProvider {
  static var previews: some View {
    ExplicitAnimation02()
  }
}
