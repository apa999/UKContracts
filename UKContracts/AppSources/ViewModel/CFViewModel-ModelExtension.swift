//
//  CFViewModel-ModelExtension.swift
//  UKContracts
//
//  Created by Anthony Abbott on 22/10/2022.
//

import Foundation

extension CFViewModel {
  
  //MARK: - Search Intents
  
  /// User has pressed search button
  func search(_ searchstr: String) {
    cfModel.search(searchstr)
  }
  
  /// User has pressed sort button
  func sort() {
    cfModel.sort()
  }
  
  
} // extension CFViewModel
