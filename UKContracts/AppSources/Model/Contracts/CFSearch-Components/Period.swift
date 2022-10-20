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
  
  var formattedStartDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    return formatter.string(from: startDate ?? Date())
  }
  
  var formattedEndDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    return formatter.string(from: endDate ?? Date())
  }
}
