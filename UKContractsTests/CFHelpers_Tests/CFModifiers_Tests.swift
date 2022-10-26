//
//  CFModifiers_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 26/10/2022.
//

import XCTest
@testable import UKContracts

final class CFModifiers_Tests: XCTestCase {
  
  func test_body() throws {
    let sut = StatusModifier(status: "Status")
    XCTAssertNotNil(sut)
    XCTAssertNotNil(sut.body)
  }
  
  func test_modifier() throws {
    var sut = StatusModifier(status: "Status")
    XCTAssertNotNil(sut)
    
    sut = StatusModifier(status: "active")
    XCTAssertEqual(sut.status, "active" )
    
    sut = StatusModifier(status: "planning")
    XCTAssertEqual(sut.status, "planning" )
    
    sut = StatusModifier(status: "planned")
    XCTAssertEqual(sut.status, "planned" )
    
    sut = StatusModifier(status: "complete")
    XCTAssertEqual(sut.status, "complete" )
    
    sut.status = "active"
    XCTAssertEqual(sut.status, "active" )
    
    sut.status = "ccc"
    XCTAssertEqual(sut.status, "ccc" )
    
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  
  
}
