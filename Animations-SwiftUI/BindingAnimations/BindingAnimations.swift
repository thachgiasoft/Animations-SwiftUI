//
//  BindingAnimations.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct BindingAnimations: View {
  @State private var animationAmount: CGFloat = 1
  
  var body: some View {
    VStack {
      Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
      
      Spacer()
      
      Button("Tap Me") {
        self.animationAmount += 1
      }
      .padding(40)
      .background(Color.red)
      .foregroundColor(.white)
      .clipShape(Circle())
      .scaleEffect(animationAmount)
    }
  }
}

struct BindingAnimations_Previews: PreviewProvider {
  static var previews: some View {
    BindingAnimations()
  }
}
