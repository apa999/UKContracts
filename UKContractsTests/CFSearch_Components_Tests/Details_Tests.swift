//
//  Details_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

/*
 // MARK: - Details
 struct Details : Codable, CustomStringConvertible {
   
   let url   : String?
   let scale : String?
   let vcse  : Bool?
 }
 */

import XCTest
@testable import UKContracts

final class Details_Tests: XCTestCase {
  
  func test_Init() throws {
    let sut = Details(url: "https://freespeechunion.org", scale: "Scale", vcse: true)
    XCTAssertEqual(sut.url, "https://freespeechunion.org")
    XCTAssertEqual(sut.scale, "Scale")
    XCTAssertEqual(sut.vcse, true)
  } 

  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
}

