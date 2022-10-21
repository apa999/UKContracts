//
//  Budget_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//


// MARK: - Budget
/*
 struct Budget : Codable {
   let budgetBreakdown : [BudgetBreakdown]
 }
 */

// MARK: - BudgetBreakdown
/*
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
 */

import XCTest
@testable import UKContracts

final class Budget_Tests: XCTestCase {
  
  func test_Init() throws {
  } 

  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
  
  func testExample() throws {
  }
  
  func testPerformanceExample() throws {
    self.measure {
    }
  }
}

