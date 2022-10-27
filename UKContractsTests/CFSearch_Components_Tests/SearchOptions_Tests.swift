//
//  SearchOptions_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 26/10/2022.
//

import XCTest
@testable import UKContracts


final class SearchOptions_Tests: XCTestCase {
  
  func test_searchOption() throws {
    let stage = Stage()
    let sut = SearchOptions(stage: stage, smeOnly: true, vcoOnly: false)
    
    XCTAssertTrue(sut.stage.award)
    XCTAssertTrue(sut.stage.tender)
    XCTAssertTrue(sut.stage.implementation)
    XCTAssertTrue(sut.stage.planning)
    
    XCTAssertTrue(sut.smeOnly)
    XCTAssertFalse(sut.vcoOnly)
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}
