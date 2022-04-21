//
//  insetFactView.swift
//  Africa
//
//  Created by Hunet on 2022/04/21.
//

import SwiftUI

struct InsetFactView: View {
  let animal: Animal
  
  var body: some View {
    GroupBox {
      TabView {
        ForEach(animal.fact, id: \.self) { item in
          Text(item)
        }
      } // tabs
      .tabViewStyle(PageTabViewStyle())
      .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
    }
  }
}

struct insetFactView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")

  static var previews: some View {
    InsetFactView(animal: animals[1])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
