//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/5/23.
//

import SwiftUI

struct ProductDetailView: View {
  
  // MARK: - PROPERTIES
  @EnvironmentObject var shop: Shop
  
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
      
      // DETAIL TOP PART
      TopPartDetailView()
        .padding(.horizontal)
        .zIndex(1)
      // DETAIL BOTTOM PART
      
      VStack(alignment: .center, spacing: 0) {
        // RATINGS + SIZES
        RatingSizesDetailView()
          .padding(.top, -20)
          .padding(.bottom, 10)
        // DESCRIPTION
        ScrollView(.vertical, showsIndicators: false) {
          Text(
            shop.selectedProduct?.description ??
            sampleProduct.description)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)
        } //: SCROLLVIEW
        
        // QUNTITY + FAVOURITE
        QuantityFavouriteDetailView()
          .padding(.vertical, 10)
        // ADD TO CART
        AddToCartDetailView()
          .padding(.bottom, 20)
        
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
      Color(
        red: shop.selectedProduct?.red ?? sampleProduct.red,
        green: shop.selectedProduct?.green ?? sampleProduct.green,
        blue: shop.selectedProduct?.blue ?? sampleProduct.blue
      )
    )
    .ignoresSafeArea(.all, edges: .all)
  }
}

#Preview() {
  ProductDetailView()
    .environmentObject(Shop())
}
