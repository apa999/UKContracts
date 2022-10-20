//
//  CFModel.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import Foundation

struct CFModel {
  

  var cfSearch = CFSearch()
//  {
//    didSet {
//      if let releases = cfSearch.releases {
//        for release in releases {
//          if let parties = release.parties {
//            print(parties.count)
//          }
//        }
//      }
//    } // didSet
//  }
  
  /// Model status
  enum ModelStatus {
    case unloaded
    case loading
    case loaded
    case loadingError
  }
  
  var modelStatus = ModelStatus.unloaded
}
