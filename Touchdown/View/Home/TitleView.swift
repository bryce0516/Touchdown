//
//  TitleView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/5/23.
//

import SwiftUI

struct TitleView: View {
    var title: String
    var body: some View {
      HStack {
        Text(title)
          .font(.largeTitle)
        .fontWeight(.heavy)
        
        Spacer()
      }
      .padding(.horizontal)
      .padding(.top, 15)
      .padding(.bottom, 10)
    }
  
}

#Preview {
    TitleView(title: "Helmet")
}
