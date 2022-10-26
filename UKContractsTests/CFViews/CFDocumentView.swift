//
//  CFDocumentView.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 26/10/2022.
//

import XCTest
@testable import UKContracts

final class CFDocumentView_Tests: XCTestCase {

  func test_CFDocumentView() throws {
    let document = Document_Tests.document1
  
    let sut = CFDocumentView(documents: [document])

    XCTAssertNotNil(sut)
  }

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}

