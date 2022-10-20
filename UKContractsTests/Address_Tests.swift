//
//  Address_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

import XCTest
@testable import UKContracts

final class Address_Tests: XCTestCase {
  
  func test_Init() throws {
    let sut = Address(streetAddress: "18 Sedgebourne Way", locality: "Birmingham", postalCode: "B31 5HQ", countryName: "England")
    
    XCTAssertEqual(sut.streetAddress, "18 Sedgebourne Way")
    XCTAssertEqual(sut.locality, "Birmingham")
    XCTAssertEqual(sut.postalCode, "B31 5HQ")
    XCTAssertEqual(sut.countryName, "England")
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

