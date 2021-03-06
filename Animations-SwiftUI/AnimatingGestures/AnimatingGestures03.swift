//
//  AnimatingGestures03.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct AnimatingGestures03: View {

  @State private var dragAmount = CGSize.zero

  var body: some View {
    LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
      .frame(width: 300, height: 200)
      .clipShape(RoundedRectangle(cornerRadius: 10))
      .offset(dragAmount)
      .gesture(
        DragGesture()
          .onChanged { self.dragAmount = $0.translation }
          .onEnded { _ in
            withAnimation(.spring()) {
              self.dragAmount = .zero
            }
        }
    )
  }
}

struct AnimatingGestures03_Previews: PreviewProvider {
  static var previews: some View {
    AnimatingGestures03()
  }
}
