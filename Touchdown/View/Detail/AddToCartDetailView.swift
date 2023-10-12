//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/12/23.
//

import SwiftUI

struct AddToCartDetailView: View {
  var body: some View {
    Button(action: {}, label: {
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
        red: sampleProduct.red,
        green: sampleProduct.green,
        blue: sampleProduct.blue
      )
    )
    .clipShape(Capsule())
  }
}

#Preview {
    AddToCartDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
}
