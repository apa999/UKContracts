//
//  Deboucer_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 27/10/2022.
//

import XCTest
@testable import UKContracts

final class Deboucer_Tests: XCTestCase {
  
  func test_Debouncer() throws {
    let sut = Debouncer(initialValue: 3, delay: 1)
    
    XCTAssertEqual(sut.input, 3)
    XCTAssertEqual(sut.output, 3)
    XCTAssertNotNil(sut.self)
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  
  
}
