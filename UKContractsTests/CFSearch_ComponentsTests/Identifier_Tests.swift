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

  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Identifier.self,from: data)
      
      XCTAssertNotNil(sut)
      
      XCTAssertEqual(sut.id, "sid4gov.cabinetoffice.gov.uk/hWvd872d")
      XCTAssertEqual(sut.scheme, "GB-SRS")
      XCTAssertEqual(sut.legalName, "Natural England")
    
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
                        "legalName": "Natural England",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/hWvd872d"
                    }
"""
}

