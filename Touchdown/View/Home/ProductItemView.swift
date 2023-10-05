//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/5/23.
//

import SwiftUI

struct ProductItemView: View {
  // MARK: - PROPERTIES
  
  let product: Product
  // MARK: - BODY
  var body: some View {
    VStack(alignment: .leading, spacing: 6) {
      ZStack {
        Image(product.image)
          .resizable()
          .scaledToFit()
          .padding(10)
      }
      .background(
        Color(
          red: product.red,
          green: product.green,
          blue: product.blue
        ))
      .cornerRadius(12)
      
      Text(product.name)
        .font(.title3)
        .fontWeight(.black)
      
      Text("$\(product.formattedPrice)")
        .fontWeight(.semibold)
        .foregroundColor(.gray)
    }
  }
}

#Preview {
  ProductItemView(
    product: products[0]
  )
}
