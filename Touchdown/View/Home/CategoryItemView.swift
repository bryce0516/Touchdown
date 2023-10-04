//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/4/23.
//

import SwiftUI

struct CategoryItemView: View {
  let category : Category
  
    var body: some View {
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        HStack(alignment: .center, spacing: 6){
          Image(category.image)
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 30, alignment: .center)
            .foregroundColor(.gray)
          
          Text(category.name.uppercased())
            .fontWeight(.light)
            .foregroundColor(.gray)
          
          Spacer()
          
        }//: HSTACK
        .padding()
        .background(Color.white.cornerRadius(12))
        .background(
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray, lineWidth: 1)
        )
      })//: BUTTON
    }
}

#Preview {
    CategoryItemView(category: categories[0])
}
