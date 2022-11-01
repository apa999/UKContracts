//
//  String-Extensions_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 23/10/2022.
//

import XCTest
@testable import UKContracts

final class String_Extensions_Tests: XCTestCase {
  
  func test_capitalizeFirstLetter() throws {
    var sut = "anthony"
    sut.capitalizeFirstLetter()
    XCTAssertEqual(sut, "Anthony")
  }
  
  func test_capitalizingFirstLetter() throws {
    let sut = "anthony".capitalizingFirstLetter()
    XCTAssertEqual(sut, "Anthony")
  }
  
  func test_deletingPrefix() throws {
    let sut = "pre_trial".deletingPrefix("pre_")
    XCTAssertEqual(sut, "trial")
  }
  
  func test_deletingPrefixAndCapitizedFirstLetter() throws {
    let sut = "pre_trial".deletingPrefix("pre_").capitalizingFirstLetter()
    XCTAssertEqual(sut, "Trial")
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}
