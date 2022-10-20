//
//  DeliveryAddress.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - DeliveryAddress
struct DeliveryAddress : Codable, Hashable {
  let region      : String?
  let countryName : String?
  let postalCode  : String?
  
  var fDeliveryAddress : String {
    var address = ""
    
    if let region {
      address = region
    }
    
    if let countryName {
      address = address.count > 0 ? "\(address), \(countryName)" : countryName
    }
    
    if let postalCode {
      address = address.count > 0 ? "\(address), \(postalCode)" : postalCode
    }
    
    return address
  }
}
