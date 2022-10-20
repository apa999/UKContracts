//
//  Award.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Award
struct Award : Codable, Identifiable {
  let id               : String?
  let status           : String?
  let date             : Date?
  let datePublished    : Date?
  let value            : MinValue?
  let suppliers        : [Buyer]?
  let contractPeriod   : Period?
  let documents        : [Document]?
  let awardDescription : String?
  
  enum CodingKeys : String, CodingKey {
    case id
    case status
    case date
    case datePublished
    case value
    case suppliers
    case contractPeriod
    case documents
    case awardDescription = "description"
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
  
  /// Format the date published
  var formattedDatePublished: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    
    if let datePublished = datePublished {
      return formatter.string(from: datePublished)
    } else {
      return ""
    }
  }
}
