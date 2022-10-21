//
//  Award_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

/*
 // MARK: - Award
 struct Award : Codable, Identifiable {
   let id               : String?
   let status           : String?
   let date             : Date?
   let datePublished    : Date?
   let value            : MinValue?
   let suppliers        : [Buyer]?
   let contractPeriod   : Period?
   let documents        : [Document]?
   let awardDescription : String?
 }
 */

import XCTest
@testable import UKContracts

final class Award_Tests: XCTestCase {
  
  var sut : Award?
  
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
  
  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Award.self,from: data)
      
      XCTAssertNotNil(sut)
      XCTAssertEqual(sut.id, "ocds-b5fd17-7d067852-1260-448e-b84a-186d028f9991-1")
      XCTAssertEqual(sut.formattedDatePublished, "Tue 10 Nov 2020, 11:04")
      XCTAssertEqual(sut.awardDescription, "A generous award")
      XCTAssertEqual(sut.status, "active")
     
    } catch {
      XCTFail("Failed to decode: \(error)")
    }
  }
  
  override func setUpWithError() throws {
    sut = Award_Tests.award
  }
  
  override func tearDownWithError() throws {
    sut = nil
  }
  
 let dataStr = """
                {
                    "id": "ocds-b5fd17-7d067852-1260-448e-b84a-186d028f9991-1",
                    "status": "active",
                    "date": "2020-10-16T00:00:00+01:00",
                    "datePublished": "2020-11-10T11:04:19Z",
                    "value": {
                        "amount": 72508.8,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-154774",
                            "name": "Peakon ApS"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2020-10-22T00:00:00+01:00",
                        "endDate": "2022-10-21T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/7d005747-1320-456e-b1fb-79919a74e44f",
                            "datePublished": "2020-11-10T11:04:19Z",
                            "dateModified": "2022-10-20T09:42:13+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ],
                    "description": "A generous award"
                }
"""
}

