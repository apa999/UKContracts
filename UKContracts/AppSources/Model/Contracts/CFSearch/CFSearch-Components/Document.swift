//
//  Document.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Document
struct Document : Codable, Identifiable {
  let id                  : String?
  let documentType        : String?
  let documentDescription : String?
  let url                 : String?
  let datePublished       : Date?
  let format              : String?
  let language            : String?
  let dateModified        : Date?
  
  enum CodingKeys : String, CodingKey {
    case id, documentType
    case documentDescription = "description"
    case url, datePublished, format, language, dateModified
  }
  
  /// Format the document type
  var formattedDocumentType: String? {
    if let documentType = documentType {
      switch documentType {
        case  "awardNotice"             : return  "Award Notice"
        case  "biddingDocuments"        : return  "Bidding Documents"
        case  "clarifications"          : return  "Clarifications"
        case  "contractNotice"          : return  "Contract Notice"
        case  "contractSchedule"        : return  "Contract Schedule"
        case  "contractSigned"          : return  "Contract Signed"
        case  "marketEngagementNotice"  : return  "Market Engagement Notice"
        case  "technicalSpecifications" : return  "Technical Specifications"
        case  "tenderNotice"            : return  "Tender Notice"
        default                         : return  documentType
      }
    }
    
    return documentType
  } // var formattedDocumentType
  
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
  
  
  /// Format the date modified
  var formattedDateModified: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    
    if let dateModified = dateModified {
      return formatter.string(from: dateModified)
    } else {
      return ""
    }
  }
}

