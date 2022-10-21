//
//  Communication.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Communication
struct Communication : Codable {
  let futureNoticeDate : Date?
  
  /// Format the date
  var formattedFutureNoticeDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    
    if let date = futureNoticeDate {
      return formatter.string(from: date)
    } else {
      return ""
    }
  }
}
