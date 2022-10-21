//
//  MinValue_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - MinValue

/*
 struct MinValue : Codable {
   let amount   : Double?
   let currency : String?
 */



import XCTest
@testable import UKContracts

final class MinValue_Tests: XCTestCase {
  
  func test_Init() throws {
    let sut = MinValue(amount: 230456.87, currency: "GBP")
    
    XCTAssertEqual(sut.amount, 230456.87)
    XCTAssertEqual(sut.currency, "GBP")
    XCTAssertEqual(sut.fAmount, "£230,456.87")
  } 

  func test_Decode() throws {
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(MinValue.self,from: data)
      
      XCTAssertNotNil(sut)
      
      XCTAssertEqual(sut.amount, 107230456.87)
      XCTAssertEqual(sut.currency, "GBP")
      XCTAssertEqual(sut.fAmount, "£107,230,456.87")
    } catch {
      XCTFail("Failed to decode: \(error)")
    }
  }
  
  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
  
  let dataStr = """
{"amount": 107230456.87, "currency" : "GBP"}
"""
}

