//
//  CFModel.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import Foundation

struct CFModel {
  
  var cfSearch = CFSearch() {
    didSet {
      print("cfSearch has changed: \(cfSearch.releases?.count ?? -1 )")
    }
  }
  
}
