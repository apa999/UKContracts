//
//  TelephoneCaller.swift
//  UKContracts
//
//  Created by Anthony Abbott on 21/10/2022.
//

import SwiftUI

struct TelephoneCaller {
  
  /// Telephones the given number
  @discardableResult static func call(_ phoneNumber: String) -> Bool {
    
    let phone = "tel://"
    let phoneNumberformatted = (phone + phoneNumber).filter { !$0.isWhitespace }
    
    if phoneNumberformatted.count < 10 {
      return false
    }
    
    if let url = URL(string: phoneNumberformatted) {
#if targetEnvironment(simulator)
#else
      UIApplication.shared.open(url)
#endif
      return true
    } else {
      return false
    }
  } // static func call
} // struct TelephoneCaller
