//
//  VideoModel.swift
//  Africa
//
//  Created by Hunet on 2022/04/21.
//

import SwiftUI

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  
  var thumbnail: String {
    "video-\(id)"
  }
}
