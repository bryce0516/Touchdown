//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/5/23.
//

import SwiftUI

struct HeaderDetailView: View {
  // MARK: - PROPERTY
  
  @EnvironmentObject var shop: Shop
  
    var body: some View {
      VStack(alignment:.leading, spacing: 6) {
        Text("Protective Gear")

        Text(shop.selectedProduct?.name ?? sampleProduct.name)
          .font(.largeTitle)
          .fontWeight(.black)
      }
      .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailView()
    .environmentObject(Shop())
    .previewLayout(.sizeThatFits)
    .padding()
    .background(Color.gray)
}
