//
//  CenterModifier.swift
//  Africa
//
//  Created by Hunet on 2022/04/25.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
