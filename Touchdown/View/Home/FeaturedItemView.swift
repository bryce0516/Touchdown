//
//  FeatureItemView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/4/23.
//

import SwiftUI

struct FeaturedItemView: View {
//  let title: String
  let player : Player
    var body: some View {
      Image(player.image)
        .resizable()
        .scaledToFit()
        .cornerRadius(12)
    }
}

#Preview {
  FeaturedItemView(player: players[0])
}
