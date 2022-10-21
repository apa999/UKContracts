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

  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
  
  
}

