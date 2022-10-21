//
//  Buyer_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Buyer
/*
 struct Buyer: Codable, Hashable {
   let id   : String?
   let name : String?
 }
 */


import XCTest
@testable import UKContracts

final class Buyer_Tests: XCTestCase {
  
  func test_Init() throws {
    let sut = Buyer(id: "id", name: "name")
    XCTAssertEqual(sut.id, "id")
    XCTAssertEqual(sut.name, "name")
  } 

  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Buyer.self,from: data)
      
      XCTAssertNotNil(sut)
      XCTAssertEqual(sut.id, "GB-SRS-sid4gov.cabinetoffice.gov.uk/hWvd872d")
      XCTAssertEqual(sut.name, "Natural England")
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
"id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/hWvd872d",
"name": "Natural England"
}
"""
}

