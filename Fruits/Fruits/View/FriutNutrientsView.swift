//
//  FriutNutrientsView.swift
//  Fruits
//
//  Created by Hunet on 2022/04/19.
//

import SwiftUI

struct FriutNutrientsView: View {
  // MARK: - PROPERTIES
  
  var fruit: Fruit
  let nutrients: [String] = ["Energy", "Suger", "Fat", "Protein", "Vitamins", "Minerals"]
  
  // MARK: - BODY
  
  var body: some View {
    GroupBox() {
      DisclosureGroup("Nutritional value per 100g") {
        ForEach(0..<nutrients.count, id: \.self) { item in
          Divider().padding(.vertical, 2)
          
          HStack {
            Group {
              Image(systemName: "info.circle")
              Text(nutrients[item])
            }
            .foregroundColor(fruit.gradientColors[1])
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            Text(fruit.nutrition[item])
              .multilineTextAlignment(.trailing)
          }
        }
      }
    }
  }
}

struct FriutNutrientsView_Previews: PreviewProvider {
  static var previews: some View {
    FriutNutrientsView(fruit: fruitsData[0])
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 375, height: 480))
      .padding()
  }
}
