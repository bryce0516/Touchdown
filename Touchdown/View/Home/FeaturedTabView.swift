//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/4/23.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
      TabView {
        ForEach(players) { player in
          FeaturedItemView(player: player)
            .padding(.top, 10)
            .padding(.horizontal, 15)
        }
      } //: TAB
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview() {
    FeaturedTabView()
}
