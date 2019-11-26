//
//  ImplicitAnimation01.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct ImplicitAnimation01: View {

  @State var animationAmount: CGFloat = 1

  var body: some View {
    Button("Tap Me") {
      self.animationAmount += 1
    }
    .padding(50)
    .background(Color.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .scaleEffect(animationAmount)
  }
}

struct ImplicitAnimation01_Previews: PreviewProvider {
  static var previews: some View {
    ImplicitAnimation01()
  }
}
