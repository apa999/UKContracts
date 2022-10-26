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
    
    if let postalCode, postalCode.count > 0 {
      address = postalCode
    }
    
    if let countryName, countryName.count > 0 {
      address = address.count > 0 ? "\(countryName), \(address)" : countryName
    }
    
    if let region, region.count > 0 {
    
      if address.count > 0 {
        
      }
      address =  address.count > 0 ? "\(region), \(address)" : "\(region)"
    }
    
    return address
  }
}
