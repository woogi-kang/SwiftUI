//
//  OnboardingView.swift
//  Fruits
//
//  Created by Woogi on 2022/04/18.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTIES
  
  var fruits: [Fruit] = fruitsData
  
  // MARK: - BODY
  
  var body: some View {
    TabView {
      ForEach(fruits) { item in
        FruitCardView(fruit: item)
      }
    }
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView(fruits: fruitsData)
  }
}
