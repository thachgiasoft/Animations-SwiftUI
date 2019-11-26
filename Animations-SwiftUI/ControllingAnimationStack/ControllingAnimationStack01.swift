//
//  ControllingAnimationStack01.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct ControllingAnimationStack01: View {
  @State private var enabled = false

  var body: some View {
    Button("Tap Me") {
      withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
        self.enabled.toggle()
      }
    }
    .padding(50)
    .background(enabled ? Color.blue : Color.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .animation(.default)
  }
}

struct ControllingAnimationStack01_Previews: PreviewProvider {
  static var previews: some View {
    ControllingAnimationStack01()
  }
}
