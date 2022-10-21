//
//  Address_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Address
/*
 struct Address : Codable {
   let streetAddress : String?
   let locality      : String?
   let postalCode    : String?
   let countryName   : String?
 }
 */

import XCTest
@testable import UKContracts

final class Address_Tests: XCTestCase {
  
  func test_Init() throws {
    let sut = Address(streetAddress: "18 Sedgebourne Way", locality: "Birmingham", postalCode: "B31 5HQ", countryName: "England")
    
    XCTAssertEqual(sut.streetAddress, "18 Sedgebourne Way")
    XCTAssertEqual(sut.locality, "Birmingham")
    XCTAssertEqual(sut.postalCode, "B31 5HQ")
    XCTAssertEqual(sut.countryName, "England")
  } 

  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Address.self,from: data)
      
      XCTAssertNotNil(sut)
      XCTAssertEqual(sut.streetAddress, "Natural England, Guildbourne House, Chatsworth")
      XCTAssertEqual(sut.locality, "Worthing")
      XCTAssertEqual(sut.postalCode, "BN11  1LD")
      XCTAssertEqual(sut.countryName, "England")
     
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
"streetAddress": "Natural England, Guildbourne House, Chatsworth",
"locality": "Worthing",
"postalCode": "BN11  1LD",
"countryName": "England"
}
"""
}

