//
//  MinValue.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - MinValue
struct MinValue : Codable {
  let amount   : Double?
  let currency : String?
  
  /// Formats the amount as a currency
  var fAmount : String {
    if let amount, let currency {
      
      let formatter = NumberFormatter()
      formatter.numberStyle = .currency
      formatter.currencyCode = currency
      formatter.maximumFractionDigits = 2
      
      let number = NSNumber(value: amount)
      
      return formatter.string(from: number) ?? ""
    }
    return ""
  }
}
