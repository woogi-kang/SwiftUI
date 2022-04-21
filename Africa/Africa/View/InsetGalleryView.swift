//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Hunet on 2022/04/21.
//

import SwiftUI

struct InsetGalleryView: View {
  let animal: Animal
  
    var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
        HStack {
          ForEach(animal.gallery, id: \.self) { item in
            Image(item)
              .resizable()
              .scaledToFit()
              .frame(height: 200)
              .cornerRadius(12)// Hs
          }
        }
      }
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")
  
    static var previews: some View {
        InsetGalleryView(animal: animals[1])
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
