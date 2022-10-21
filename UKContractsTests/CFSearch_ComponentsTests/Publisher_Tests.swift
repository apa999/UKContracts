//
//  Publisher_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Publisher
/*
 struct Publisher : Codable {
   let name   : String?
   let scheme : String?
   let uid    : String?
   let uri    : String?
 }
 */


import XCTest
@testable import UKContracts

final class Publisher_Tests: XCTestCase {
  
  let dataStr = """
   {
        "name": "Cabinet Office",
        "scheme": "GB-GOR",
        "uid": "D2",
        "uri": "https://www.gov.uk/government/organisations/cabinet-office"
    }
"""
  
  
  func test_Init() throws {
    let sut = Publisher(name: "Name", scheme: "Scheme", uid: "UID", uri: "URI")
    
    XCTAssertEqual(sut.name, "Name")
    XCTAssertEqual(sut.scheme, "Scheme")
    XCTAssertEqual(sut.uid, "UID")
    XCTAssertEqual(sut.uri, "URI")
  }

  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Publisher.self,from: data)
      
      XCTAssertNotNil(sut)
    
      XCTAssertEqual(sut.name, "Cabinet Office")
      XCTAssertEqual(sut.scheme, "GB-GOR")
      XCTAssertEqual(sut.uid, "D2")
      XCTAssertEqual(sut.uri, "https://www.gov.uk/government/organisations/cabinet-office")
     
    } catch {
      XCTFail("Failed to decode: \(error)")
    }
  }
  
  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
  
}

