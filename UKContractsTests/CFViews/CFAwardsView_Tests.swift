//
//  CFAwardsView_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 26/10/2022.
//

import XCTest
@testable import UKContracts

final class CFAwardsView_Tests: XCTestCase {
  
  func test_awardStatus() throws {
    let sut = CFAwardsView(awards: CFAwardsView_Tests.awards)
    XCTAssertNotNil(sut)
    
    XCTAssertNotNil(sut.formatStatus(""))
   
  }
  
  func test_award() throws {
  
    let sut = CFAwardsView(awards: CFAwardsView_Tests.awards)
    XCTAssertNotNil(sut)
    
    let values = sut.showValues(MinValue(amount: 200, currency: "GBP"))
    XCTAssertNotNil(values)

    let suppliers = sut.showSuppliers([Buyer(id: "A", name: "B")])
    XCTAssertNotNil(suppliers)
    
    let suppliers1 = sut.showSuppliers([Buyer(id: "A", name: "B"), Buyer(id: "C", name: "D")])
    XCTAssertNotNil(suppliers1)
    
    let awardDetail = sut.showAwardDetails(CFAwardsView_Tests.award)
    XCTAssertNotNil(awardDetail)
    
    XCTAssertNotNil(sut.body)
    XCTAssertEqual(sut.awards[0].status , "active")
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  
 
  //MARK: - Test Data
  static var date0 : Date? {
    TestHelpers.getDateFor("2022-10-19T09:20:00+0000")
  }
  
  static var date1 : Date? {
    TestHelpers.getDateFor("2022-10-20T10:00:00+0000")
  }
  
  static var date2 : Date? {
    TestHelpers.getDateFor( "2022-10-2T12:30:00+0000")
  }
  
  static var date3 : Date? {
    TestHelpers.getDateFor( "2022-10-21T14:15:00+0000")
  }
  
  static var date4 : Date? {
    TestHelpers.getDateFor( "2022-10-21T15:55:00+0000")
  }
  
  static let award = Award(id: "ocds-b5fd17-2adc51f8-1f81-49ad-a2d0-be4dbd74dbf7-1",
                           status: "active",
                           date: date0,
                           datePublished: date1,
                           value: MinValue(amount: 525934.07, currency: "GBP"),
                           suppliers: [Buyer(id: "GB-COH-08484860", name: "The Full English")],
                            contractPeriod: Period(startDate: date2, endDate: date3),
                            documents: [Document(id: "1", documentType:  "awardNotice", documentDescription: "Awarded contract notice on Contracts Finder", url: "https://www.contractsfinder.service.gov.uk/Notice/a8ff94a4-6eff-4dbd-8cff-4bfca2c41ee0", datePublished: date3, format: "text/html", language:  "en", dateModified: date4)], awardDescription: "awardDescription")
 
  static let awards = [award]
}
