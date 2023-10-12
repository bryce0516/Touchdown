//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/12/23.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
  // MARK: - PROPERTIES
  
  @State private var counter : Int = 0
  // MARK: - BODY
    var body: some View {
      HStack(alignment: .center, spacing: 6){
        Button(action: {
          if counter > 0 {
            counter -= 1
          }
        }, label: {
          Image(systemName: "minus.circle")
        })
        
        Text("\(counter)")
          .fontWeight(.semibold)
          .frame(minWidth: 36)
        
        Button(action: {
          if counter < 100 {
            counter += 1
          }
          
        }, label: {
          Image(systemName: "plus.circle")
        })
        
        Spacer()
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
          Image(systemName: "heart.circle")
            .foregroundColor(.pink)
        })
      }
      .font(.system(.title, design: .rounded))
      .foregroundColor(.black)
      .imageScale(.large)
      
    }
}

#Preview {
    QuantityFavouriteDetailView()
    .previewLayout(.sizeThatFits)
    .padding()
}
