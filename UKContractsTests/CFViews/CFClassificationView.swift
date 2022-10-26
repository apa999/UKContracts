//
//  CFClassificationView.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 26/10/2022.
//

import XCTest
@testable import UKContracts

final class CFClassificationView_Tests: XCTestCase {

  func test_preview() throws {
    let sut = ClassifacationView_Previews()
    XCTAssertNotNil(sut)
  }
  
  func test_CFClassificationView() throws {
    let sut = CFClassificationView(classification: Classification(scheme: "Scehme", id: "Id", classificationDescription: "Description"))

    XCTAssertNotNil(sut)
    XCTAssertNotNil(sut.body)
  }

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}

