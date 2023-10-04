//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/4/23.
//

import SwiftUI

struct NavigationBarView: View {
  // MARK: - PROPERTIES
  
  @State private var isAnimated: Bool = false
  
  // MARK: - BODY
  var body: some View {
    HStack {
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        Image(systemName: "magnifyingglass")
          .font(.title)
          .foregroundColor(.black)
      })
      
      Spacer()
      
      LogoView()
        .opacity(isAnimated ? 1 : 0)
        .offset(x: 0,y: isAnimated ? 0 : -25)
        .onAppear(perform: {
          withAnimation(.easeOut(duration: 0.5)) {
            isAnimated.toggle()
          }
        })
      
      Spacer()
      
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        ZStack {
          Image(systemName: "cart")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.black)
          Circle()
            .fill(Color.red)
            .frame(width: 14, height: 14, alignment: .center)
            .offset(x:13, y: -10)
        }
        
      })
    }
  }
}

#Preview {
  NavigationBarView()
}
