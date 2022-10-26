//
//  DashedLine_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 26/10/2022.
//

import XCTest
@testable import UKContracts

final class DashedLine_Tests: XCTestCase {
  
  func test_dashedLine() throws {
    let sut = Line()
    let path = sut.path(in: CGRect(x: 0, y: 10, width: 100, height: 200))
    XCTAssertNotNil(path)
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  
}
