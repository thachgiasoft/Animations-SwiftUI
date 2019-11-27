//
//  ContentView.swift
//  Animations-SwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/25/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {

  @State private var animationAmount: CGFloat = 1

  var body: some View {
    NavigationView {
      List {
        Section(header: Text("Implicit")) {
          NavigationLink(destination: ImplicitAnimation01()) {
            Text("Demo 1")
          }
          NavigationLink(destination: ImplicitAnimation02()) {
            Text("Demo 2")
          }
          NavigationLink(destination: ImplicitAnimation03()) {
            Text("Demo 3")
          }
        }

        Section(header: Text("Custom")) {
          NavigationLink(destination: CustomAnimation01()) {
            Text("Demo 1")
          }
          NavigationLink(destination: CustomAnimation02()) {
            Text("Demo 2")
          }
          NavigationLink(destination: CustomAnimation03()) {
            Text("Demo 3")
          }
          NavigationLink(destination: CustomAnimation04()) {
            Text("Demo 4")
          }
          NavigationLink(destination: CustomAnimation05()) {
            Text("Demo 5")
          }
          NavigationLink(destination: CustomAnimation06()) {
            Text("Demo 6")
          }
          NavigationLink(destination: CustomAnimation07()) {
            Text("Demo 7")
          }
        }

        Section(header: Text("Animating Bindings")) {
          NavigationLink(destination: BindingAnimations()) {
            Text("Demo 1")
          }
        }

        Section(header: Text("Explicit")) {
          NavigationLink(destination: ExplicitAnimation01()) {
            Text("Demo 1")
          }
          NavigationLink(destination: ExplicitAnimation02()) {
            Text("Demo 2")
          }
        }

        Section(header: Text("Controlling Animation Stack")) {
          NavigationLink(destination: ControllingAnimationStack01()) {
            Text("Demo 1")
          }
          NavigationLink(destination: ControllingAnimationStack02()) {
            Text("Demo 2")
          }
          NavigationLink(destination: ControllingAnimationStack03()) {
            Text("Demo 3")
          }
          NavigationLink(destination: ControllingAnimationStack04()) {
            Text("Demo 4")
          }
        }

        Section(header: Text("Animating Gestures")) {
          NavigationLink(destination: AnimatingGestures01()) {
            Text("Demo 1")
          }
          NavigationLink(destination: AnimatingGestures02()) {
            Text("Demo 2")
          }
          NavigationLink(destination: AnimatingGestures03()) {
            Text("Demo 3")
          }
          NavigationLink(destination: AnimatingGestures04()) {
            Text("Demo 4")
          }
        }

        Section(header: Text("Showing|Hiding Views with Transitions")) {
          NavigationLink(destination: ShowingHidingViewsWithTransitions01()) {
            Text("Demo 1")
          }
          NavigationLink(destination: ShowingHidingViewsWithTransitions02()) {
            Text("Demo 2")
          }
          NavigationLink(destination: ShowingHidingViewsWithTransitions03()) {
            Text("Demo 3")
          }
          NavigationLink(destination: ShowingHidingViewsWithTransitions04()) {
            Text("Demo 4")
          }
        }

        Section(header: Text("Custom Transitions on ViewModifiers")) {
          NavigationLink(destination: CustomTransitionsOnViewModifiers()) {
            Text("Demo 1")
          }
        }
      }
      .listStyle(GroupedListStyle())
      .navigationBarTitle("Animations")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
