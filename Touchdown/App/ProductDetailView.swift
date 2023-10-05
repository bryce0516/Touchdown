//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/5/23.
//

import SwiftUI

struct ProductDetailView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 5){
      
      // NAVBAR
      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top
        )
      // HEADER
      HeaderDetailView()
        .padding(.horizontal)
      Text(sampleProduct.name)
      // DETAIL TOP PART
      TopPartDetailView()
        .padding(.horizontal)
      // DETAIL BOTTOM PART
      // RATINGS + SIZES
      // DESCRIPTION
      // QUNTITY + FAVOURITE
      // ADD TO CART
      Spacer()
    }
    .ignoresSafeArea(.all, edges: .all)
    .background(
      Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
    )
    .ignoresSafeArea(.all, edges: .all)
  }
}

#Preview() {
  ProductDetailView()
}
