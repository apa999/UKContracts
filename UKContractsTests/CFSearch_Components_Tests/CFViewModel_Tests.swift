//
//  CFViewModel_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 19/10/2022.
//

import XCTest
@testable import UKContracts

final class CFViewModel_Tests: XCTestCase {
  
  
  func test_DownloadCFDataData() async throws {
    let url = URL(string: Constants.searchText)!
    
    let exp = expectation(description: "Download Contract data")
    URLSession.shared.dataTask(with: url) {data, httpResponse, error in
      XCTAssertNotNil(data)
      exp.fulfill()
    }.resume()
    
    wait(for: [exp], timeout: 5)
  }
  

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
}
