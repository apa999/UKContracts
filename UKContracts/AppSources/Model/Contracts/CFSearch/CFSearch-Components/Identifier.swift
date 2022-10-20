//
//  Identifier.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Identifier
struct Identifier : Codable {
  let legalName : String?
  let scheme    : String?
  let id        : String?
}
