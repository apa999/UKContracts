//
//  TelephoneCaller_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 23/10/2022.
//

import XCTest
@testable import UKContracts

final class TelephoneCaller_Tests: XCTestCase {
  
  func test_numberShouldBeValid() throws {
    var sut = TelephoneCaller.validNumber("01214579182")
    XCTAssertTrue(sut)
    
    sut = TelephoneCaller.validNumber("0121 457 9182")
    XCTAssertTrue(sut)
    
    sut = TelephoneCaller.validNumber("07859 457 918")
    XCTAssertTrue(sut)
  }
  
  //TODO: - telephone number validation not installed
  
  /*
  func test_numberShouldBeInvalid() throws {
    var sut = TelephoneCaller.validNumber("x01214579182")
    XCTAssertFalse(sut)
    
    sut = TelephoneCaller.validNumber("")
    XCTAssertFalse(sut)
    
    sut = TelephoneCaller.validNumber("1@345")
    XCTAssertFalse(sut)
  }
   */
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}
