//
//  CFModel_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

import XCTest
@testable import UKContracts

final class CFModel_Tests: XCTestCase {
  
  /// Create an empty model
  func test_loadingUriShouldBeEmpty()
  {
    let sut = CFModel()
    
    XCTAssertEqual(sut.cfSearch.uri, "", "CFSearch.uri should be initialised to \"\".")
  }
  
  /// Loads the test data and checks the number of releases - should be one
  func test_loadingShouldBeOneRelease()
  {
    let dummyDataLoader = DummyDataLoader()
    let cfSearch        = dummyDataLoader.load(data: CFSearch.cfSearchTestData)
    
    XCTAssertEqual(cfSearch.releases?.count, 1, "Expected 1 release in test data")
  }
  
  /// Loads the test data and checks the number of releases - should be five
  func test_loadingShouldBeFiveRelease()
  {
    let dummyDataLoader = DummyDataLoader()
    let cfSearch        = dummyDataLoader.load(data: TestData.fiveReleasesData)
    
    XCTAssertEqual(cfSearch.releases?.count, 5, "Expected 5 releases in test data")
  }
  
  /// Loads the test data and checks the formatted release date
  func test_loadingReleaseDateShouldBe()
  {
    let dummyDataLoader = DummyDataLoader()
    let cfSearch        = dummyDataLoader.load(data: CFSearch.cfSearchTestData)
    
    XCTAssertEqual(cfSearch.releases?[0].formattedDate, "Thu 19 May 2022, 17:08", "Formatted date is incorrect - expected \"Thu 19 May 2022, 17:08\", found: \"cfSearch.releases?[0].formattedDate\"")
  }
  
  
  
  
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testExample() throws {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    // Any test you write for XCTest can be annotated as throws and async.
    // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
    // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
  }
  
  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
}
