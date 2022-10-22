//
//  CFViewModel-ModelExtension.swift
//  UKContracts
//
//  Created by Anthony Abbott on 22/10/2022.
//

import Foundation

extension CFViewModel {
  
  //MARK: - Search Intents
  
  func sort() {
    print("CFViewModel-ModelExtension.search()")
  }
  
  /// Tell the model to make the next release current
  func setNextRelease() {
    cfModel.setNextRelease()
  }
  
  /// Tell the model to make the prev release current
  func setPrevRelease() {
    cfModel.setPrevRelease()
  }
  

  
} // extension CFViewModel
