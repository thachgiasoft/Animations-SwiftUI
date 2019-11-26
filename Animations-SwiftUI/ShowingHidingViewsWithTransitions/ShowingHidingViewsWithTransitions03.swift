//
//  ShowingHidingViewsWithTransitions03.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/26/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct ShowingHidingViewsWithTransitions03: View {

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
          .transition(.scale)
      }
    }
  }
}

struct ShowingHidingViewsWithTransitions03_Previews: PreviewProvider {
  static var previews: some View {
    ShowingHidingViewsWithTransitions03()
  }
}
