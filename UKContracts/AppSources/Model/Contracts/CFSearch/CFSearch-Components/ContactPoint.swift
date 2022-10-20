//
//  ContactPoint.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation


// MARK: - ContactPoint
struct ContactPoint : Codable {
  let name      : String?
  let email     : String
  let telephone : String?
}
