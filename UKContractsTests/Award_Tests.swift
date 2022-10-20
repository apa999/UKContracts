//
//  Award_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

import XCTest
@testable import UKContracts

final class Award_Tests: XCTestCase {
  
  var sut : Award?
  
  //MARK: - Test Data
  static var date0 : Date {
    let dateAsString = "2022-10-19T09:20:00+0000"
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    let date = dateFormatter.date(from:dateAsString)!
    return date
  }
  
  static var date1 : Date {
    let dateAsString = "2022-10-20T10:00:00+0000"
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    let date = dateFormatter.date(from:dateAsString)!
    return date
  }
  
  static var date2 : Date {
    let dateAsString = "2022-10-2T12:30:00+0000"
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    let date = dateFormatter.date(from:dateAsString)!
    return date
  }
  
  static var date3 : Date {
    let dateAsString = "2022-10-21T14:15:00+0000"
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    let date = dateFormatter.date(from:dateAsString)!
    return date
  }
  
  static var date4 : Date {
    let dateAsString = "2022-10-21T15:55:00+0000"
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    let date = dateFormatter.date(from:dateAsString)!
    return date
  }
  
  static let award = Award(id: "ocds-b5fd17-2adc51f8-1f81-49ad-a2d0-be4dbd74dbf7-1",
                           status: "active",
                           date: date0,
                           datePublished: date1,
                           value: MinValue(amount: 525934.07, currency: "GBP"),
                           suppliers: [Buyer(id: "GB-COH-08484860", name: "The Full English")],
                            contractPeriod: Period(startDate: date2, endDate: date3),
                            documents: [Document(id: "1", documentType:  "awardNotice", documentDescription: "Awarded contract notice on Contracts Finder", url: "https://www.contractsfinder.service.gov.uk/Notice/a8ff94a4-6eff-4dbd-8cff-4bfca2c41ee0", datePublished: date3, format: "text/html", language:  "en", dateModified: date4)], awardDescription: "awardDescription")
  
  //MARK: - Tests
  func test_Dates() throws {
    XCTAssertNotNil(sut)
    XCTAssertEqual(sut!.formattedDate, "Wed 19 Oct 2022, 10:20")
    XCTAssertEqual(sut!.formattedDatePublished, "Thu 20 Oct 2022, 11:00")
  } 

  func test_Values() throws {
    XCTAssertNotNil(sut)
    XCTAssertNotNil(sut!.value?.amount)
    XCTAssertEqual(sut!.value?.amount, 525934.07)
    XCTAssertEqual(sut!.value?.currency, "GBP")
    XCTAssertEqual(sut!.value?.fAmount, "£525,934.07")
  }
  
  
  override func setUpWithError() throws {
    sut = Award_Tests.award
  }
  
  override func tearDownWithError() throws {
    sut = nil
  }
  
  func testPerformanceExample() throws {
    self.measure {
    }
  }
}

