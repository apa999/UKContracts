//
//  URLSession-Extension_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 26/10/2022.
//

import XCTest
@testable import UKContracts

final class URLSession_Extension_Tests: XCTestCase {
  
  /*
   keyDecodingStrategy : JSONDecoder.KeyDecodingStrategy  = .useDefaultKeys,
   dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .deferredToData,
   dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate
   */
 
  func test_URLSessionExtension() async throws {
    let url = URL(string: "https://hws.dev/readings.json")!
    let readings = try! await URLSession.shared.decode([Double].self, from: url)
    XCTAssertEqual(readings.count, 10_000)
  }
  
  func test_URLSessionExtensionWithDateDecodingStrategy() async throws {
    let url = URL(string: "https://hws.dev/readings.json")!
    let readings = try! await URLSession.shared.decode([Double].self, from: url, dateDecodingStrategy: .iso8601)
    XCTAssertEqual(readings.count, 10_000)
  }
  
  func test_URLSessionExtensionWithKeyDecodingStrategy() async throws {
    let url = URL(string: "https://hws.dev/readings.json")!
    let readings = try! await URLSession.shared.decode([Double].self, from: url, keyDecodingStrategy: .convertFromSnakeCase)
    XCTAssertEqual(readings.count, 10_000)
  }
  
  
  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  
  
  
  
}
