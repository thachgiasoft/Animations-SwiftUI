//
//  AnimatingGestures04.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct AnimatingGestures04: View {
  
  let letters = Array("Hello SwiftUI")
  @State private var enabled = false
  @State private var dragAmount = CGSize.zero

  var body: some View {
      HStack(spacing: 0) {
          ForEach(0..<letters.count) { num in
              Text(String(self.letters[num]))
                  .padding(5)
                  .font(.title)
                  .background(self.enabled ? Color.blue : Color.red)
                  .offset(self.dragAmount)
                  .animation(Animation.default.delay(Double(num) / 20))
          }
      }
      .gesture(
          DragGesture()
              .onChanged { self.dragAmount = $0.translation }
              .onEnded { _ in
                  self.dragAmount = .zero
                  self.enabled.toggle()
              }
      )
  }
}

struct AnimatingGestures04_Previews: PreviewProvider {
  static var previews: some View {
    AnimatingGestures04()
  }
}
