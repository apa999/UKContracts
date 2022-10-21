//
//  Suitability_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Suitability
/*
 struct Suitability : Codable {
   let sme  : Bool?
   let vcse : Bool?
 }
 */

import XCTest
@testable import UKContracts

final class Suitability_Tests: XCTestCase {
  
  func test_Init() throws {
    let sut = Suitability(sme: true, vcse: false)
    
    XCTAssertEqual(sut.sme, true)
    XCTAssertEqual(sut.vcse, false)
  } 

  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
}

