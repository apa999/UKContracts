//
//  Classification_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Classification
/*
 struct Classification : Codable {
   let scheme                    : String?
   let id                        : String?
   let classificationDescription : String?
   
 */


import XCTest
@testable import UKContracts

final class Classification_Tests: XCTestCase {
  
  func test_Init() throws {
    let sut = Classification(scheme: "scheme", id: "id", classificationDescription: "description")
    
    XCTAssertEqual(sut.scheme, "scheme")
    XCTAssertEqual(sut.id, "id")
    XCTAssertEqual(sut.classificationDescription, "description")
  } 

  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Classification.self,from: data)
      
      XCTAssertNotNil(sut)
      
      XCTAssertEqual(sut.id, "48000000")
      XCTAssertEqual(sut.scheme, "CPV")
      XCTAssertEqual(sut.classificationDescription, "Software package and information systems")
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
                    "scheme": "CPV",
                    "id": "48000000",
                    "description": "Software package and information systems"
                }
"""
  
}

