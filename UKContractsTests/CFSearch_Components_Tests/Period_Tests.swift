//
//  Period_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Period
/*
 struct Period : Codable {
   let startDate : Date?
   let endDate   : Date?
 */

import XCTest
@testable import UKContracts

final class Period_Tests: XCTestCase {
  
  let startDate = TestHelpers.getDateFor("2022-05-19T06:00:00+0000")
  let endDate   = TestHelpers.getDateFor("2022-10-28T18:00:00+0000")
  let dataStr = """
{
"startDate": "2022-11-25T00:00:00Z",
"endDate"  : "2025-11-24T23:59:59Z"
}
"""
  func test_Init() throws {
    let sut = Period(startDate: startDate, endDate: endDate)
    
    XCTAssertEqual(sut.formattedStartDate, "Thu 19 May 2022, 07:00")
    XCTAssertEqual(sut.formattedEndDate, "Fri 28 Oct 2022, 19:00")
  } 

  func test_Decode() throws {
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Period.self,from: data)
      
      XCTAssertNotNil(sut)
      
      XCTAssertEqual(sut.formattedStartDate, "Fri 25 Nov 2022, 00:00")
      XCTAssertEqual(sut.formattedEndDate, "Mon 24 Nov 2025, 23:59")
    } catch {
      XCTFail("Failed to decode: \(error)")
    }
  }
  
  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
}

