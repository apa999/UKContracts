//
//  CFDocument_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 19/10/2022.
//

import XCTest
@testable import UKContracts

final class CFDocument_Tests: XCTestCase {
  
  /*
   static let DocumentTest18 = Document(id: "18",
           documentType: "tenderNotice",
           documentDescription: "Opportunity notice on Contracts Finder" ,
           url: "https://www.contractsfinder.service.gov.uk/Notice/cefc9804-f06a-4c14-807c-bb48ccfed079",
           datePublishedStr: "2022-10-06 10:56:33 +0000",
           format: "text/html" ,
           language: "en",
           dateModifiedStr: "2022-10-19 13:24:23 +0000"
    )
   */
  
  func test_DocumentInit() throws {
    let sut = CFSearch.DocumentTest18
    let url = "https://www.contractsfinder.service.gov.uk/Notice/cefc9804-f06a-4c14-807c-bb48ccfed079"
    XCTAssertEqual(sut.id, "18")
    XCTAssertEqual(sut.formattedDocumentType, "Tender Notice")
    XCTAssertEqual(sut.documentDescription, "Opportunity notice on Contracts Finder")
    XCTAssertEqual(sut.url, url)
    XCTAssertEqual(sut.format, "text/html")
    XCTAssertEqual(sut.language, "en")
    XCTAssertEqual(sut.formattedDatePublished, "Thu 6 Oct 2022, 11:56")
    XCTAssertEqual(sut.formattedDateModified,  "Wed 19 Oct 2022, 14:24")
  }
  
  func test_formattedDocumentType() throws {
    let sut = CFSearch.DocumentTest10
    XCTAssertEqual(sut.formattedDocumentType, "Tender Notice")
  }
  
  func test_formattedDatePublished() throws {
    let sut = CFSearch.DocumentTest3
    print(sut)
    XCTAssertEqual(sut.formattedDatePublished, "Wed 19 Oct 2022, 15:00")
  }
  
  func test_formattedDateModified() throws {
    let sut = CFSearch.DocumentTest18
    XCTAssertEqual(sut.formattedDateModified, "Wed 19 Oct 2022, 14:24")
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
