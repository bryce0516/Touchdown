//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/12/23.
//

import SwiftUI

struct RatingSizesDetailView: View {
  // MARK: - PROPERTIES
  let sizes: [String] = ["XS", "S", "M", "L", "XL"]
  
  // MARK: - BODY
  var body: some View {
    HStack(alignment: .top, spacing: 3) {
      // RATINGS
      VStack(alignment: .leading, spacing: 3) {
        Text("Ratings")
          .font(.footnote)
          .fontWeight(.semibold)
          .foregroundColor(colorGray)
        
        HStack(alignment: .center, spacing: 3) {
          ForEach(1...5, id: \.self) { item in
            Button(action: {
              
            }, label: {
              Image(systemName: "star.fill")
                .frame(width: 28, height: 28, alignment: .center)
                .background(colorGray.cornerRadius(5))
                .foregroundColor(.white)
            })
            
          }
        }
      }
      Spacer()
      // SIZES
      
      VStack(alignment: .trailing, spacing: 3) {
        
        Text("Sizes")
          .font(.footnote)
          .fontWeight(.semibold)
          .foregroundColor(colorGray)
        
        HStack(alignment: .center, spacing: 5) {
          ForEach(sizes, id: \.self) { size in
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Text(size)
                .font(.footnote)
                .fontWeight(.heavy)
                .foregroundColor(colorGray)
                .frame(width: 28, height: 28, alignment: .center)
                .background(
                  RoundedRectangle(cornerRadius: 5)
                    .stroke(colorGray, lineWidth: 2)
                )
              
            })
          }
        }
      }
    }
  }
}

#Preview {
  RatingSizesDetailView()
    .previewLayout(.sizeThatFits)
    .padding()
}
