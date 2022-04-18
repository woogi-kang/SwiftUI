//
//  ControlImageView.swift
//  Pinch
//
//  Created by Hunet on 2022/04/18.
//

import SwiftUI

struct ControlImageView: View {
  let icon: String
  
    var body: some View {
      Image(systemName: icon)
        .font(.system(size: 36))
    }
}

struct ControlImageView_Previews: PreviewProvider {
    static var previews: some View {
      ControlImageView(icon: "minus.magnifiyingglass")
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
