//
//  ContentView.swift
//  Touch Down
//
//  Created by Hunet on 2022/04/26.
//

import SwiftUI

struct ContentView: View {
  // MARK: - Properties
  
  
  // MARK: - Body
  var body: some View {
    ZStack {
      VStack(spacing: 0) {
        NavigationBarView()
          .padding(.horizontal, 15)
          .padding(.bottom)
          .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
          .background(Color.white)
          .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
        
        ScrollView(.vertical, showsIndicators: false) {
          VStack(spacing: 0) {
            FeaturedTabView()
            
            FooterView()
              .padding(.horizontal)
          }
        }
        
        
      } // VStack
      .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    } // ZStack
    .ignoresSafeArea(.all, edges: .top)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
