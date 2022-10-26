//
//  TelephoneCaller_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 23/10/2022.
//

import XCTest
@testable import UKContracts

final class TelephoneCaller_Tests: XCTestCase {
  
  func test_telephone() throws {
    
    XCTAssertTrue(TelephoneCaller.call("01214503929"))
    XCTAssertFalse(TelephoneCaller.call(""))
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}
