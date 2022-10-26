//
//  Communication_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Communication
/*
 struct Communication : Codable {
   let futureNoticeDate : Date?
 }
 */

import XCTest
@testable import UKContracts

final class Communication_Tests: XCTestCase {
  
  func test_c() throws {
    let sut = Communication(futureNoticeDate: nil)
    
    XCTAssertEqual(sut.formattedFutureNoticeDate, "")
  }
  
  func test_Init() throws {
    let futureNoticeDate = TestHelpers.getDateFor("2022-10-19T09:20:00+0000")
    let sut = Communication(futureNoticeDate: futureNoticeDate)
    
    XCTAssertEqual(sut.formattedFutureNoticeDate, "Wed 19 Oct 2022, 10:20")
  } 

  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
}

