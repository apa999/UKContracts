//
//  Address.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Address
struct Address : Codable {
  let streetAddress : String?
  let locality      : String?
  let postalCode    : String?
  let countryName   : String?
}
