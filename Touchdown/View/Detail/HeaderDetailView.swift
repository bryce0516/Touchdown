//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/5/23.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
      VStack(alignment:.leading, spacing: 6) {
        Text("Protective Gear")
          .font(.largeTitle)
          .fontWeight(.black)
        
      }
      .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailView()
}
