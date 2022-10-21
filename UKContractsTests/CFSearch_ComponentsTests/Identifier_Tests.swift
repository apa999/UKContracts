//
//  Identifier_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Identifier
/*
 struct Identifier : Codable {
   let legalName : String?
   let scheme    : String?
   let id        : String?
 }
 */

import XCTest
@testable import UKContracts

final class Identifier_Tests: XCTestCase {
  
  let sut = Identifier(legalName: "legalName", scheme: "scheme", id: "id")
  
  func test_Init() throws {
    XCTAssertEqual(sut.legalName, "legalName")
    XCTAssertEqual(sut.scheme, "scheme")
    XCTAssertEqual(sut.id, "id")
  } 

  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
}

