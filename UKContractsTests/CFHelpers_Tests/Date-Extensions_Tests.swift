//
//  Date-Extensions_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 23/10/2022.
//

import XCTest
@testable import UKContracts

final class Date_Extensions_Tests: XCTestCase {
  
  func test_Dates_OneDayApart() throws {
    let d1 = TestHelpers.getDateFor("2022-10-19T09:20:00+0000")
    let d2 = TestHelpers.getDateFor("2022-10-20T09:20:00+0000")
    
    XCTAssertNotNil(d1)
    XCTAssertNotNil(d2)
    XCTAssertEqual(d2!.distance(from: d1!, only: .day), 1)
  }
  
  func test_Dates_TwoHoursApart() throws {
    let d1 = TestHelpers.getDateFor("2022-10-20T09:20:00+0000")
    let d2 = TestHelpers.getDateFor("2022-10-20T11:20:00+0000")
    
    XCTAssertNotNil(d1)
    XCTAssertNotNil(d2)
    XCTAssertEqual(d2!.distance(from: d1!, only: .hour), 2)
  }
  
  func test_Dates_ThreeMinsApart() throws {
    let d1 = TestHelpers.getDateFor("2022-10-20T11:23:00+0000")
    let d2 = TestHelpers.getDateFor("2022-10-20T11:20:00+0000")
    
    XCTAssertNotNil(d1)
    XCTAssertNotNil(d2)
    XCTAssertEqual(d2!.distance(from: d1!, only: .minute), -3)
  }
  
  func test_Dates_HasSameYear() throws {
    let d1 = TestHelpers.getDateFor("2022-10-20T11:20:00+0000")
    let d2 = TestHelpers.getDateFor("2022-10-20T11:20:00+0000")
    
    XCTAssertNotNil(d1)
    XCTAssertNotNil(d2)
    XCTAssertEqual(d2!.hasSame(.year, as: d1!), true)
  }
  
  func test_Dates_HasSameMonth() throws {
    let d1 = TestHelpers.getDateFor("2022-10-20T11:20:00+0000")
    let d2 = TestHelpers.getDateFor("2022-10-20T11:20:00+0000")
    
    XCTAssertNotNil(d1)
    XCTAssertNotNil(d2)
    XCTAssertEqual(d2!.hasSame(.month, as: d1!), true)
  }
  
  func test_Dates_FullDistanceMonth() throws {
    let d1 = TestHelpers.getDateFor("2022-07-20T11:20:00+0000")
    let d2 = TestHelpers.getDateFor("2022-10-20T11:20:00+0000")
    
    XCTAssertNotNil(d1)
    XCTAssertNotNil(d2)
    XCTAssertEqual(d2!.fullDistance(from: d1!, resultIn: .month) , -3)
  }
  
  func test_Dates_FullDistanceSeconds() throws {
    let d1 = TestHelpers.getDateFor("2022-10-20T11:20:35+0000")
    let d2 = TestHelpers.getDateFor("2022-10-20T11:20:00+0000")
    
    XCTAssertNotNil(d1)
    XCTAssertNotNil(d2)
    XCTAssertEqual(d2!.fullDistance(from: d1!, resultIn: .second) , 35)
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}
