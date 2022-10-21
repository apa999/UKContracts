//
//  CFViewModel_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 19/10/2022.
//

import XCTest
@testable import UKContracts

final class CFViewModel_Tests: XCTestCase {
  
  
  
  /// Tests that invalid URL's are caught
  @MainActor
  func test_InvalidUrl_ShouldSetViewModelStatusToInvalidUrl() {
    let sut = CFViewModel()
    let invalidUrlString = "An Invalid URL String"
    
    sut.search(urlString: invalidUrlString)
    
    XCTAssertEqual(sut.viewModelStatus, .invalidUrl(invalidUrl: invalidUrlString) , "Expected invalid url")
  }
  
  /// Tests that valid URL's are accepted - The Task is asynchronous so
  /// the status sahould be unloaded
  @MainActor
  func test_InvalidUrl_ShouldSetViewModelStatusTo() {
    let sut = CFViewModel()
    
    sut.search(urlString: Constants.searchText)
    
    XCTAssertEqual(sut.viewModelStatus, .unloaded , "Expected unloaded")
  }
  
  //TODO: - Need an async test
  /// Load data witha valid URL
  /// This needs a async test
  @MainActor
  func test_InvalidUrl_ShouldLoadData() {
    let sut = CFViewModel()
    
    sut.search(urlString: Constants.searchText)
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
}
