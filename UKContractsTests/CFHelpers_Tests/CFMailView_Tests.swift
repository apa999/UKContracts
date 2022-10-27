//
//  CFMailView_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 27/10/2022.
//

import XCTest
@testable import UKContracts
import SwiftUI

final class CFMailView_Tests: XCTestCase {
  
  func test_cfMail_getCoordinator() throws {
    var sut = CFMailViewTester()
    
    let cfMailView = sut.test()
    
    let coordinator = cfMailView.makeCoordinator()
    XCTAssertNotNil(coordinator)
    
    XCTAssertEqual(coordinator.subject, "CFMailViewTester - subject")
    XCTAssertEqual(coordinator.recipients, "CFMailViewTester@me.com")
    XCTAssertFalse(coordinator.presentation.isPresented)
    

  }
  
  func test_cfMail_callTest() throws {
    var sut = CFMailViewTester()
    
    let cfMailView = sut.test()
    
    XCTAssertEqual(cfMailView.subject, "CFMailViewTester - subject")
    XCTAssertEqual(cfMailView.recipients, "CFMailViewTester@me.com")
    XCTAssertFalse(cfMailView.isShowing)
  }
  
  func test_cfMail() throws {
    let sut = CFMailViewTester()
    
    XCTAssertNotNil(sut)
    XCTAssertEqual(sut.recipients, "CFMailViewTester@me.com")
    XCTAssertEqual(sut.subject,    "CFMailViewTester - subject")
    XCTAssertFalse(sut.isShowingMailView)
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}
