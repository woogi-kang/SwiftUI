//
//  FeaturedItemView.swift
//  Touch Down
//
//  Created by Hunet on 2022/04/26.
//

import SwiftUI

struct FeaturedItemView: View {
  // MARK: - Property
  let player: Player
  
  // MARK: - Body
  var body: some View {
    Image(player.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}

struct FeaturedItemView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedItemView(player: players[0])
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}
