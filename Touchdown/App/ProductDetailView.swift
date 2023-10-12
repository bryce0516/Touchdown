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
        .zIndex(1)
      // DETAIL BOTTOM PART
      
      VStack(alignment: .center, spacing: 0) {
        // RATINGS + SIZES
        // DESCRIPTION
        ScrollView(.vertical, showsIndicators: false) {
          Text(sampleProduct.description)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)
        } //: SCROLLVIEW
        
        // QUNTITY + FAVOURITE
        
        // ADD TO CART
        Spacer()
      } //: VSTACK
      .zIndex(0)
      .padding(.horizontal)
      .background(Color.white
        .clipShape(CustomShape())
        .padding(.top, -105)
      )
      
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
