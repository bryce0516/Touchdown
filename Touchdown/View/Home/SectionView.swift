//
//  SectionView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/4/23.
//

import SwiftUI

struct SectionView: View {
  // MARK: - PROPERTIES
  @State var rotateClockwise: Bool
  var body: some View {
    VStack(spacing: 0) {
      Spacer()
      
      Text("Categories".uppercased())
        .font(.footnote)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
      
      Spacer()
    }
    .background(colorGray.cornerRadius(12))
    .frame(width: 85)
  }
  
}

#Preview {
  SectionView(rotateClockwise: false)
}
