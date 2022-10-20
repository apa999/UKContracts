//
//  Details.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Details
struct Details : Codable, CustomStringConvertible {
  
  let url   : String?
  let scale : String?
  let vcse  : Bool?
  
  var description: String {
    return "URL: \(url ?? "")"
  }
  
}
