//
//  Period.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Period
struct Period : Codable {
  let startDate : Date?
  let endDate   : Date?
  
  /// Format the start date
  var formattedStartDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    
    if let startDate = startDate {
      return formatter.string(from: startDate)
    } else {
      return ""
    }
  }
  
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
