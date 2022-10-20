//
//  Release.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Release
struct Release : Codable, Identifiable {
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
  
  var formattedDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    return formatter.string(from: date ?? Date())
  }
}
