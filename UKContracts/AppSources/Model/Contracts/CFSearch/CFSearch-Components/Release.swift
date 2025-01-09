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
  
  /// Tender is required; without it the release is meaningless
  let tender         : Tender
  
  let parties        : [Party]?
  let buyer          : Buyer?
  let awards         : [Award]?
  let planning       : Planning?
  
  var selected = false
  
  /// Exclude "selected"
  enum CodingKeys: String, CodingKey {
    case ocid
    case id
    case language
    case date
    case tag
    case initiationType
    case tender
    case parties
    case buyer
    case awards
    case planning
    }
  
  //TODO: - Individual components should be responsible for string representation
  /// formatted version of release for pronting, email, etc
  var formatted: String {
    var s = ""
    
    s  +=  "Title: \(tender.title)\n"
    
    if let date = date {
      s  +=  "Date : \(date.formatted(date: .long, time: .shortened))\n"
    }
    
    s  +=  "Description : \(tender.tenderDescription)\n"
    
    if let status = tender.status {
      s  +=  "Status : \(status)\n"
    }
    
    if let cpvCode = tender.classification?.id {
      s  +=  "CPV Code : \(cpvCode)\n"
    }
    
    return s
  }
  
  mutating func toggleSelected() {
    selected.toggle()
  }
  
  func contains(userText: String) -> Bool {
    
    let userText = userText.lowercased()
    
    if tender.title.lowercased().contains(userText)
    || tender.tenderDescription.lowercased().contains(userText) {
      return true
    }
    return false
  }
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
