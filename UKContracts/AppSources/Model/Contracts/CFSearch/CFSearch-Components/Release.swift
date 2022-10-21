//
//  Release.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Release
struct Release : Codable, Identifiable, Hashable {
  
  let ocid           : String?
  let id             : String?
  let language       : String?
  let date           : Date?
  let tag            : [String]?
  let initiationType : String?
  let tender         : Tender?
  let parties        : [Party]?
  let buyer          : Buyer?
  let awards         : [Award]?
  let planning       : Planning?
  
  /// Format the date
  var formattedDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    
    if let date = date {
      return formatter.string(from: date)
    } else {
      return ""
    }
  }
  
  static func == (lhs: Release, rhs: Release) -> Bool {
    lhs.id == rhs.id
  }
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
    hasher.combine(ocid)
  } // func hasher()
}
