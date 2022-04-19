//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Woogi on 2022/04/19.
//

import SwiftUI

struct SourceLinkView: View {
  var fruit: Fruit
  
  var body: some View {
    GroupBox() {
      HStack {
        Text("Content source")
        Spacer()
        Link("Wikipedia", destination: URL(string: "https://wikipedia.com/wiki/\(fruit.title)")!)
        Image(systemName: "arrow.up.right.square")
      }
      .font(.footnote)
    }
  }
}

struct SourceLinkView_Previews: PreviewProvider {
  static var previews: some View {
    SourceLinkView(fruit: fruitsData[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
