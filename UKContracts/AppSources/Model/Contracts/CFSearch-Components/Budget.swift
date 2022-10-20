//
//  Budget.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

// MARK: - Budget
struct Budget : Codable {
  let budgetBreakdown : [BudgetBreakdown]
}

// MARK: - BudgetBreakdown
struct BudgetBreakdown : Codable {
  let id                         : String?
  let period                     : Period?
  let budgetBreakdownDescription : String?
  let amount                     : MinValue?
  
  enum CodingKeys : String, CodingKey {
    case id, period
    case budgetBreakdownDescription = "description"
    case amount
  }
}
