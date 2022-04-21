//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Woogi on 2022/04/20.
//

import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T {
    // Locate file
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locale \(file) in bundle.")
    }
    
    // Create property for the data
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle.")
    }
    
    // Create decoder
    let decoder = JSONDecoder()
    
    // Create decoded data
    guard let loaded = try? decoder.decode(T.self, from: data) else {
      fatalError("Failed to decode \(file) from bundle")
    }
    
    return loaded
  }
}
