//
//  Planning_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Planning
/*
 struct Planning : Codable {
   let budget    : Budget?
   let documents : [Document]?
 }
 */


import XCTest
@testable import UKContracts

final class Planning_Tests: XCTestCase {
  
  let dataStr = """
{
"documents": [
{
"id": "1",
"documentType": "marketEngagementNotice",
"description": "Early engagement notice on Contracts Finder",
"url": "https://www.contractsfinder.service.gov.uk/Notice/c80defc1-9081-4b74-a5b1-d85535d22a12",
"datePublished": "2022-10-19T18:36:35+01:00",
"format": "text/html",
"language": "en"
}
]
}
"""

  func test_Init() throws {
  } 

  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Planning.self,from: data)
      
      XCTAssertNotNil(sut)
      XCTAssertNil(sut.budget)
      XCTAssertNotNil(sut.documents)
      XCTAssertEqual(sut.documents?.count, 1)
      XCTAssertEqual(sut.documents!.first!.documentType, "marketEngagementNotice")
    } catch {
      XCTFail("Failed to decode: \(error)")
    }
  }
  
  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
  
 
}

