//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Woogi on 2022/04/19.
//

import SwiftUI

struct SettingsLabelView: View {
  
  var labelText: String
  var labelImage: String
  
  var body: some View {
    HStack {
      Text(labelText.uppercased()).fontWeight(.bold)
      Spacer()
      Image(systemName: labelImage)
    }
  }
}

struct SettingsLabelView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
      .previewLayout(.sizeThatFits)
  }
}
