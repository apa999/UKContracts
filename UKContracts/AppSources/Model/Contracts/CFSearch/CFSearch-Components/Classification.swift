//
//  Classification.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Classification
struct Classification : Codable {
  let scheme                    : String?
  let id                        : String?
  let classificationDescription : String?
  
  enum CodingKeys : String, CodingKey {
    case scheme, id
    case classificationDescription = "description"
  }
}
