//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/5/23.
//

import SwiftUI

struct BrandItemView: View {
  // MARK: - PROPERTIES
  let brand : Brand
  
  // MARK: - BODY
  var body: some View {
    Image(brand.image)
      .resizable()
      .scaledToFit()
      .padding()
      .background(Color.white.cornerRadius(12))
      .background(
        RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
      )
  }
}

#Preview {
  BrandItemView(brand: brands[0])
}
