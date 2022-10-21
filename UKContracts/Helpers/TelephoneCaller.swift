//
//  TelephoneCaller.swift
//  UKContracts
//
//  Created by Anthony Abbott on 21/10/2022.
//

import SwiftUI

struct TelephoneCaller {
  
  /// Telephones the given number
  static func call(_ phoneNumber: String) {
    let phone = "tel://"
    let phoneNumberformatted = (phone + phoneNumber).filter { !$0.isWhitespace }
    
    if let url = URL(string: phoneNumberformatted) {
      UIApplication.shared.open(url)
    } else {
     print("Invalid number: \(phoneNumberformatted)")
    }
  }
}
