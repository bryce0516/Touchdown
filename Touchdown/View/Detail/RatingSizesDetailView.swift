//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/12/23.
//

import SwiftUI

struct RatingSizesDetailView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  var body: some View {
    HStack(alignment: .top, spacing: 3) {
      // RATINGS
      VStack(alignment: .leading, spacing: 3) {
        Text("Ratings")
          .font(.footnote)
          .fontWeight(.semibold)
          .foregroundColor(.gray)
        
        HStack(alignment: .center, spacing: 2) {
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
      // SIZES
      
      VStack(alignment: .trailing, spacing: 3) {
        
        Text("Sizes")
          .font(.footnote)
          .fontWeight(.semibold)
          .foregroundColor(colorGray)
      }
    }
  }
}

#Preview {
  RatingSizesDetailView()
    .previewLayout(.sizeThatFits)
    .padding()
}
