//
//  Constants_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 26/10/2022.
//

import XCTest
@testable import UKContracts

final class Constants_Tests: XCTestCase {
  
  
  func test_constants() {
    XCTAssertNotNil(Constants.divider)
    XCTAssertNotNil(Constants.dashedLine)
  }
  
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}
