//
//  ControllingAnimationStack03.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct ControllingAnimationStack03: View {
  @State private var enabled = false

  var body: some View {
    Button("Tap Me") {
        self.enabled.toggle()
    }
    .frame(width: 200, height: 200)
    .background(enabled ? Color.blue : Color.red)
    .animation(.default)
    .foregroundColor(.white)
    .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
    .animation(.interpolatingSpring(stiffness: 10, damping: 1))
  }
}

struct ControllingAnimationStack03_Previews: PreviewProvider {
  static var previews: some View {
    ControllingAnimationStack03()
  }
}
