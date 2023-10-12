//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/12/23.
//

import SwiftUI

struct AddToCartDetailView: View {
  // MARK: - PROPERTIES
  
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    Button(action: {
      feedback.impactOccurred()
    }, label: {
      Spacer()
      Text("Add to cart".uppercased())
        .font(.system(.title2, design: .rounded))
        .fontWeight(.bold)
        .foregroundColor(.white)
      Spacer()
    })
    .padding(15)
    .background(
      Color(
        red: shop.selectedProduct?.red ?? sampleProduct.red,
        green: shop.selectedProduct?.green ?? sampleProduct.green,
        blue: shop.selectedProduct?.blue ?? sampleProduct.blue
      )
    )
    .clipShape(Capsule())
  }
}

#Preview {
  AddToCartDetailView()
    .environmentObject(Shop())
    .previewLayout(.sizeThatFits)
    .padding()
}
