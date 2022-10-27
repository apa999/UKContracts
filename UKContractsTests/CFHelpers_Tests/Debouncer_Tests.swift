//
//  Debouncer_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 26/10/2022.
//

import XCTest
@testable import UKContracts

final class Debouncer_Tests: XCTestCase {
  
  func test_Debouncer_InitValue() throws {
    let sut = Debouncer(initialValue: "ABC", delay: 2.0)
    XCTAssertNotNil(sut)
    
    sut.input = "A"
    XCTAssertEqual(sut.input,"A")
    XCTAssertEqual(sut.output,"ABC")
  }
  
  func test_Debouncer_Tests() throws {
    let sut = Debouncer(initialValue: "", delay: 1.0)
    XCTAssertNotNil(sut)
    
    sut.input = "A"
    XCTAssertNotNil(sut.input)
    
    XCTAssertNotNil(sut.output)
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
}
