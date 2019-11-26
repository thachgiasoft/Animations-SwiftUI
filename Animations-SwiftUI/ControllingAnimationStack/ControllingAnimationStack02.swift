//
//  ControllingAnimationStack02.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct ControllingAnimationStack02: View {
  @State private var enabled = false

  var body: some View {
    Button("Tap Me") {
      withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
        self.enabled.toggle()
      }
    }
    .frame(width: 200, height: 200)
    .background(enabled ? Color.blue : Color.red)
    .foregroundColor(.white)
    .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
    .animation(.default)
  }
}

struct ControllingAnimationStack02_Previews: PreviewProvider {
  static var previews: some View {
    ControllingAnimationStack02()
  }
}
