//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/5/23.
//

import SwiftUI

struct BrandGridView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
    var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
        LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
          ForEach(brands) {
            brand in
              BrandItemView(brand: brand)
          }
        }
        .frame(height: 200)
        .padding(15)
      }
    }
}

#Preview {
    BrandGridView()
}
