//
//  Party.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Party
struct Party : Codable, Identifiable {
  let id           : String?
  let name         : String?
  let identifier   : Identifier?
  let address      : Address?
  let contactPoint : ContactPoint?
  let details      : Details?
  let roles        : [String]
}
