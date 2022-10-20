//
//  CFModel.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import Foundation

struct CFModel {
  
  var cfSearch = CFSearch()
  {
    didSet {
      if let releases = cfSearch.releases {
        for release in releases {
          print("release: \(release.id)")

          if let tender = release.tender {
            print("Tender: \(tender.id)")
            if tender.id == "CON-22-237" {
              print("FOUND: \(release.id)")
            }
          }
        }
      }
    } // didSet
  }
}
