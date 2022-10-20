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
      if documentType == "tenderNotice" {
        return "Tender notice"
      }
    }
    
    return documentType
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

extension Document {
  init(id                  : String?,
       documentType        : String?,
       documentDescription : String?,
       url                 : String?,
       datePublishedStr    : String?,
       format              : String?,
       language            : String?,
       dateModifiedStr     : String?) {
    self.id                  = id
    self.documentType        = documentType
    self.documentDescription = documentDescription
    self.url                 = url
    self.format              = format
    self.language            = language
    
    let formatter = DateFormatter()
    
    /// Expected format : "2022-10-06 10:56:33 +0000"
    formatter.dateFormat = "yyyy-MM-dd HH:mm:ssZ"
    
    if let datePublishedStr = datePublishedStr {
      datePublished = formatter.date(from: datePublishedStr) ?? nil
    } else {
      self.datePublished = nil
    }
    
    if let dateModifiedStr = dateModifiedStr {
      dateModified = formatter.date(from: dateModifiedStr) ?? nil
    } else {
      dateModified = nil
    }
  }
}
