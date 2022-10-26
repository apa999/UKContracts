//
//  EquatableError_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 26/10/2022.
//

import XCTest
@testable import UKContracts

final class EquatableError_Tests: XCTestCase {
  
  enum Reason: Equatable {
      case badNetwcork
      case noNetwork
  }
  
  struct NetworkError: Error, Equatable {
      let code: Int
      let reason: Reason
      let isRecoverable: Bool

      static func ==(lhs: NetworkError, rhs: NetworkError) -> Bool {
          lhs.code == rhs.code && lhs.reason == rhs.reason
      }
  }
  
  func test_EquatableError1() throws {
    let networkErrorA = NetworkError(code: 1701, reason: .badNetwcork, isRecoverable: false)
    let networkErrorB = NetworkError(code: 1701, reason: .badNetwcork, isRecoverable: true)
    let networkErrorC = NetworkError(code: 1702, reason: .noNetwork, isRecoverable: false)

    XCTAssertTrue(networkErrorA == networkErrorB)
    XCTAssertFalse(networkErrorA == networkErrorC)
  }
  
  func test_EquatableError2() throws {
    let networkErrorA = NetworkError(code: 1701, reason: .badNetwcork, isRecoverable: false)
    let networkErrorB = NetworkError(code: 1701, reason: .badNetwcork, isRecoverable: true)
    let networkErrorC = NetworkError(code: 1702, reason: .noNetwork, isRecoverable: false)
    
    let equatableErrorA = EquatableError(networkErrorA)
    let equatableErrorB = EquatableError(networkErrorB)
    let equatableErrorC = EquatableError(networkErrorC)

    XCTAssertFalse(equatableErrorA == equatableErrorB)
    XCTAssertFalse(equatableErrorA == equatableErrorC)
  }
  
  func test_EquatableError3() throws {
    let networkError = NetworkError(code: 1701, reason: .badNetwcork, isRecoverable: false)
    let description = String(reflecting: networkError)

    XCTAssertEqual(description.count, 150)
  }
  
  func test_EquatableError4() throws {
    let networkError1 = NetworkError(code: 1701, reason: .badNetwcork, isRecoverable: false)
    let equatableError1 = EquatableError(networkError1)
    XCTAssertEqual(equatableError1.description.count,112)
  }
  
  func test_EquatableError5() throws {
    let networkErrorA = NetworkError(code: 1701, reason: .badNetwcork, isRecoverable: false)
    let equatableErrorA = EquatableError(networkErrorA)
    XCTAssertEqual(equatableErrorA.localizedDescription.count, 98)
  }
  
  func test_EquatableError6() throws {
    let networkErrorA = NetworkError(code: 1701, reason: .badNetwcork, isRecoverable: false)
    let networkErrorB = NetworkError(code: 1701, reason: .badNetwcork, isRecoverable: true)
    let networkErrorC = NetworkError(code: 1702, reason: .noNetwork, isRecoverable: false)

    XCTAssertTrue(networkErrorA == networkErrorB)
    XCTAssertFalse(networkErrorA == networkErrorC)
    XCTAssertEqual(networkErrorA.toEquatableError(), networkErrorA.toEquatableError())
  }
  
  
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  
}
