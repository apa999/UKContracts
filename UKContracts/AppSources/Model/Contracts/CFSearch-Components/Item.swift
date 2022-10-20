//
//  Item.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Item
struct Item : Codable, Equatable, Hashable {
  
  let id                : String?
  let deliveryAddresses : [DeliveryAddress]?
  
  static func == (lhs: Item, rhs: Item) -> Bool {
    return lhs.id == rhs.id
  }
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
    hasher.combine(deliveryAddresses)
  }
}
