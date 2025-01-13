//
//  JSONHelper.swift
//  CF0
//
//  Created by Anthony Abbott on 29/12/2024.
//

import Foundation

struct JSONHelper {
  func decode<T: Codable>(_ data: Data) -> T {
    do {
      let decoder = JSONDecoder()
      return try decoder.decode(T.self, from: data)
    } catch {
      fatalError("Couldn't parse data as \(T.self):\n\(error)")
    }
    
  }
}
