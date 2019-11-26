//
//  CustomTransitionsOnViewModifiers.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
  let amount: Double
  let anchor: UnitPoint
  
  func body(content: Content) -> some View {
    content.rotationEffect(.degrees(amount), anchor: anchor).clipped()
  }
}

extension AnyTransition {
  static var pivot: AnyTransition {
    .modifier(
      active: CornerRotateModifier(amount: -90, anchor: .topLeading),
      identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
    )
  }
}

struct CustomTransitionsOnViewModifiers: View {
  @State private var isShowingRed = false

  var body: some View {
    VStack {
      Button("Tap Me") {
        withAnimation {
          self.isShowingRed.toggle()
        }
      }

      if isShowingRed {
        Rectangle()
          .fill(Color.red)
          .frame(width: 200, height: 200)
          .transition(.pivot)
      }
    }
  }
}

struct CustomTransitionsOnViewModifiers_Previews: PreviewProvider {
  static var previews: some View {
    CustomTransitionsOnViewModifiers()
  }
}
