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
      if let releases = cfSearch.releases {
        for release in releases {
          print("release: \(release.id)")
          
          if let tender = release.tender {
            if let docs = tender.documents {
              print(docs)
            }
          }
        }
      }
    }
  }
}
