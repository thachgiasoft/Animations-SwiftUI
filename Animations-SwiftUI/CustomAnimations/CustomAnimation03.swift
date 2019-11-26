//
//  CustomAnimation03.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct CustomAnimation03: View {

  @State private var animationAmount: CGFloat = 1

  var body: some View {
    Button("Tap Me") {
      self.animationAmount += 1
    }
    .padding(50)
    .background(Color.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .scaleEffect(animationAmount)
    .animation(.easeInOut(duration: 2))
  }
}

struct CustomAnimation03_Previews: PreviewProvider {
  static var previews: some View {
    CustomAnimation03()
  }
}
