//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/5/23.
//

import SwiftUI

struct NavigationBarDetailView: View {
  
  // MARK: - PROPERTIES
  
  @EnvironmentObject var shop: Shop
  
    var body: some View {
      HStack {
        Button(action: {
          withAnimation(.easeIn) {
            feedback.impactOccurred()
            shop.selectedProduct = nil
            shop.showingProduct = false
          }
        }, label: {
          Image(systemName: "chevron.left")
            .font(.title)
            .foregroundColor(.white)
        })
        Spacer()
        
        Button(action: {}, label: {
          Image(systemName: "cart")
            .font(.title)
            .foregroundColor(.white)
        })
      }//: HSTACK
    }
}

#Preview {
    NavigationBarDetailView()
    .environmentObject(Shop())
}
