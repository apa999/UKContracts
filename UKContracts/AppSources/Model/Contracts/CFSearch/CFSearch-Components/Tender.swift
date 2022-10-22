//
//  Tender.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Tender
struct Tender : Codable {
  let id                        : String?
  
  /// There must be a title
  let title                     : String
  
  let tenderDescription         : String?
  let datePublished             : Date?
  let status                    : String?
  let classification            : Classification?
  let items                     : [Item]?
  let minValue                  : MinValue?
  let value                     : MinValue?
  let procurementMethod         : String?
  let procurementMethodDetails  : String?
  let tenderPeriod              : TenderPeriod?
  let contractPeriod            : Period?
  let suitability               : Suitability?
  let mainProcurementCategory   : String?
  let documents                 : [Document]?
  let additionalClassifications : [Classification]?
  let communication             : Communication?
  
  var fStatus: String {
    if let status = status {
      return status.capitalizingFirstLetter()
    }
    return ""
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
  
  enum CodingKeys : String, CodingKey {
    case id, title
    case tenderDescription = "description"
    case datePublished
    case status
    case classification
    case items
    case minValue
    case value
    case procurementMethod
    case procurementMethodDetails
    case tenderPeriod
    case contractPeriod
    case suitability
    case mainProcurementCategory
    case documents
    case additionalClassifications
    case communication
  }
}

// MARK: - TenderPeriod
struct TenderPeriod : Codable {
  let endDate : Date?
  
  /// Format the end date
  var formattedEndDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    
    if let endDate = endDate {
      return formatter.string(from: endDate)
    } else {
      return ""
    }
  }
}
