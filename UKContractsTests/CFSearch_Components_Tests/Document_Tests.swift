//
//  Document_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Document
/*
 struct Document : Codable, Identifiable {
   let id                  : String?
   let documentType        : String?
   let documentDescription : String?
   let url                 : String?
   let datePublished       : Date?
   let format              : String?
   let language            : String?
   let dateModified        : Date?
 */

import XCTest
@testable import UKContracts

final class Document_Tests: XCTestCase {
  
  //MARK: - Test Data
  static var datePublished : Date? {
    TestHelpers.getDateFor("2022-09-01T09:20:00+0000")
  }
  
  static var dateModified : Date? {
    TestHelpers.getDateFor("2022-10-19T12:30:00+0000")
  }
  
  static let document1 = Document(id: "1",
          documentType: "tenderNotice",
          documentDescription: "Opportunity notice on Contracts Finder" ,
          url: "https://www.contractsfinder.service.gov.uk/Notice/a0943966-090b-469d-9756-223cde76a5f2",
          datePublished: datePublished,
          format: "text/html" ,
          language: "en",
          dateModified: dateModified
   )

  static let document2 = Document(id: "2",
          documentType: "tenderNotice",
          documentDescription: "Opportunity notice on Contracts Finder" ,
          url: "https://www.contractsfinder.service.gov.uk/Notice/a0943966-090b-469d-9756-223cde76a5f2",
          datePublished: nil,
          format: "text/html" ,
          language: "en",
          dateModified: nil
   )
  
  func test_statics1() throws {
    let document9 = Document(id: "9",
            documentType: "tenderNotice",
            documentDescription: "Opportunity notice on Contracts Finder" ,
            url: "https://www.contractsfinder.service.gov.uk/Notice/a0943966-090b-469d-9756-223cde76a5f2",
                             datePublished: Document_Tests.dateModified,
            format: "text/html" ,
            language: "en",
                             dateModified: Document_Tests.datePublished
     )
    
    XCTAssertNotNil(document9)
  }
  
  func test_statics0() throws {
    let document9 = Document(id: "9",
            documentType: "tenderNotice",
            documentDescription: "Opportunity notice on Contracts Finder" ,
            url: "https://www.contractsfinder.service.gov.uk/Notice/a0943966-090b-469d-9756-223cde76a5f2",
            datePublished: nil,
            format: "text/html" ,
            language: "en",
            dateModified: nil
     )
    
    XCTAssertNotNil(document9)
  }
  
  func test_NilDates() throws {
    let sut = Document_Tests.document2
    
    XCTAssertNil(sut.datePublished)
    XCTAssertEqual(sut.formattedDatePublished, "")
    XCTAssertNil(sut.dateModified)
    XCTAssertEqual(sut.formattedDateModified, "")
  }
  
  func test_Dates() throws {
    let sut = Document_Tests.document1
    
    XCTAssertEqual(sut.datePublished, TestHelpers.getDateFor("2022-09-01T09:20:00+0000"))
    XCTAssertEqual(sut.formattedDatePublished, "Thu 1 Sep 2022, 10:20")
    XCTAssertEqual(sut.dateModified, TestHelpers.getDateFor("2022-10-19T12:30:00+0000"))
    XCTAssertEqual(sut.formattedDateModified, "Wed 19 Oct 2022, 13:30")
  }
  
  func test_Init() throws {
    let sut = Document_Tests.document1
    
    XCTAssertEqual(sut.documentType, "tenderNotice")
    XCTAssertEqual(sut.documentDescription, "Opportunity notice on Contracts Finder")
    XCTAssertEqual(sut.url, "https://www.contractsfinder.service.gov.uk/Notice/a0943966-090b-469d-9756-223cde76a5f2")
    XCTAssertEqual(sut.format, "text/html")
    XCTAssertEqual(sut.language, "en")
    XCTAssertEqual(sut.formattedDateModified, "Wed 19 Oct 2022, 13:30")
    XCTAssertEqual(sut.formattedDatePublished, "Thu 1 Sep 2022, 10:20")
    XCTAssertEqual(sut.formattedDocumentType, "Tender Notice")
  }
  
  func test_FormattedDocumentType() throws {
    
    let d0 = Document(id: nil, documentType: "UnknownNotice",
               documentDescription: nil ,url: nil,datePublished: nil,format: nil ,language: nil,dateModified: nil
        )
    
    let d1 = Document(id: nil, documentType: "awardNotice",
               documentDescription: nil ,url: nil,datePublished: nil,format: nil ,language: nil,dateModified: nil
        )

    let d2 = Document(id: nil, documentType: "biddingDocuments",
               documentDescription: nil ,url: nil,datePublished: nil,format: nil ,language: nil,dateModified: nil
        )

    let d3 = Document(id: nil, documentType: "clarifications",
               documentDescription: nil ,url: nil,datePublished: nil,format: nil ,language: nil,dateModified: nil
        )

    let d4 = Document(id: nil, documentType: "contractNotice",
               documentDescription: nil ,url: nil,datePublished: nil,format: nil ,language: nil,dateModified: nil
        )

    let d5 = Document(id: nil, documentType: "contractSchedule",
               documentDescription: nil ,url: nil,datePublished: nil,format: nil ,language: nil,dateModified: nil
        )

    let d6 = Document(id: nil, documentType: "contractSigned",
               documentDescription: nil ,url: nil,datePublished: nil,format: nil ,language: nil,dateModified: nil
        )

    let d7 = Document(id: nil, documentType: "marketEngagementNotice",
               documentDescription: nil ,url: nil,datePublished: nil,format: nil ,language: nil,dateModified: nil
        )

    let d8 = Document(id: nil, documentType: "technicalSpecifications",
               documentDescription: nil ,url: nil,datePublished: nil,format: nil ,language: nil,dateModified: nil
        )

    let d9 = Document(id: nil, documentType: "tenderNotice",
               documentDescription: nil ,url: nil,datePublished: nil,format: nil ,language: nil,dateModified: nil
        )
    
    XCTAssertEqual(d0.formattedDocumentType, "UnknownNotice")
    XCTAssertEqual(d1.formattedDocumentType, "Award Notice")
    XCTAssertEqual(d2.formattedDocumentType, "Bidding Documents")
    XCTAssertEqual(d3.formattedDocumentType, "Clarifications")
    XCTAssertEqual(d4.formattedDocumentType, "Contract Notice")
    XCTAssertEqual(d5.formattedDocumentType, "Contract Schedule")
    XCTAssertEqual(d6.formattedDocumentType, "Contract Signed")
    XCTAssertEqual(d7.formattedDocumentType, "Market Engagement Notice")
    XCTAssertEqual(d8.formattedDocumentType, "Technical Specifications")
    XCTAssertEqual(d9.formattedDocumentType, "Tender Notice")
  }

  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Document.self,from: data)
      
      XCTAssertNotNil(sut)
      
      XCTAssertEqual(sut.id, "1")
      XCTAssertEqual(sut.documentType, "tenderNotice")
      XCTAssertEqual(sut.documentDescription, "Opportunity notice on Contracts Finder")
      XCTAssertEqual(sut.url, "https://www.contractsfinder.service.gov.uk/Notice/21c21591-9f65-4468-a4f4-a187ecc0411e")
      XCTAssertEqual(sut.formattedDatePublished, "Wed 5 Oct 2022, 15:34")
      XCTAssertEqual(sut.format, "text/html")
      XCTAssertEqual(sut.language, "en")
      XCTAssertEqual(sut.formattedDateModified, "Thu 20 Oct 2022, 09:40")

    } catch {
      XCTFail("Failed to decode: \(error)")
    }
  }
  
  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
  
  let dataStr = """
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/21c21591-9f65-4468-a4f4-a187ecc0411e",
                        "datePublished": "2022-10-05T15:34:44+01:00",
                        "dateModified": "2022-10-20T09:40:02+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
"""
}

