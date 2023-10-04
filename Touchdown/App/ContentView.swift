//
//  ContentView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/4/23.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  var body: some View {
    VStack(spacing: 0) {
      NavigationBarView()
      
      Spacer()
      
      FooterView()
        .padding(.horizontal)
    }
    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
  }
}

#Preview {
  ContentView()
}
