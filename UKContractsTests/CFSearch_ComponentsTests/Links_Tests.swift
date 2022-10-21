//
//  Links_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Links
/*
 struct Links : Codable {
   let next : String?
 }
 */

import XCTest
@testable import UKContracts

final class Links_Tests: XCTestCase {
  
  func test_Init() throws {
    let sut = Links(next: "Link")
    
    XCTAssertEqual(sut.next, "Link")
  }
  
  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Links.self,from: data)
      
      XCTAssertNotNil(sut)
      
      XCTAssertEqual(sut.next, "JSON_Link")
    } catch {
      XCTFail("Failed to decode: \(error)")
    }
  }
  
  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
  
  let dataStr = """
{"next": "JSON_Link"}
"""
}

