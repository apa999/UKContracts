//
//  ContactPoint_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - ContactPoint
/*
 struct ContactPoint : Codable {
   let name      : String?
   let email     : String
   let telephone : String?
 }
 */

import XCTest
@testable import UKContracts

final class ContactPoint_Tests: XCTestCase {
  
  func test_Init() throws {
    let sut = ContactPoint(name: "name", email: "email", telephone: "telephone")
    
    XCTAssertEqual(sut.name, "name")
    XCTAssertEqual(sut.email, "email")
    XCTAssertEqual(sut.telephone, "telephone")
  } 

  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(ContactPoint.self,from: data)
      
      XCTAssertNotNil(sut)
      
      XCTAssertEqual(sut.name, "Tanya Kalina")
      XCTAssertEqual(sut.email, "tanya.kalina@nmc-uk.org")
      XCTAssertEqual(sut.telephone, "07811267195")
    } catch {
      XCTFail("Failed to decode: \(error)")
    }
  }
  
  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
  
  let dataStr = """
                    {
                        "name": "Tanya Kalina",
                        "email": "tanya.kalina@nmc-uk.org",
                        "telephone": "07811267195"
                    }
"""
}

