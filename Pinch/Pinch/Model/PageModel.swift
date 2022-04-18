//
//  PageModel.swift
//  Pinch
//
//  Created by Woogi on 2022/04/18.
//

import Foundation

struct Page: Identifiable {
  let id: Int
  let imageName: String
}

extension Page {
  var thumbnailName: String {
    return "thumb-" + imageName
  }
}
