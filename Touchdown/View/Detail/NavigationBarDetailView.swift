//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/5/23.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
      HStack {
        Button(action: {}, label: {
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
}
