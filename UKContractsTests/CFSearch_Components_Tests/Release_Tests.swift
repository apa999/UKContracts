//
//  Release_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//


/*
 struct Release : Codable, Identifiable {
   let ocid           : String?
   let id             : String?
   let language       : String?
   let date           : Date?
   let tag            : [String]?
   let initiationType : String?
   let tender         : Tender?
   let parties        : [Party]?
   let buyer          : Buyer?
   let awards         : [Award]?
   let planning       : Planning?
 }
 */


import XCTest
@testable import UKContracts

final class Release_Tests: XCTestCase {
  
  //TODO: - Incomplete
  func test_Format() throws {
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Release.self,from: data)
      
      XCTAssertNotNil(sut)
    
      XCTAssertEqual(sut.formatted.count, 1716)
    } catch {
      XCTFail("Failed to decode: \(error)")
    }
  }
  
  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Release.self,from: data)
      
      XCTAssertNotNil(sut)
      
      XCTAssertEqual(sut.ocid, "ocds-b5fd17-8af6ed71-be4a-4cf4-bb4b-bbb35e04cbfa")
      XCTAssertEqual(sut.id, "97e3ebe6-fac5-49c8-90cb-461e530a3505-582357")
      XCTAssertEqual(sut.language, "en")
      XCTAssertEqual(sut.initiationType, "tender")
      XCTAssertEqual(sut.formattedDate, "Thu 20 Oct 2022, 09:41")
      
      XCTAssertEqual(sut.tag?.count, 1)
      XCTAssertEqual(sut.tag![0], "award")
     
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
            "ocid": "ocds-b5fd17-8af6ed71-be4a-4cf4-bb4b-bbb35e04cbfa",
            "id": "97e3ebe6-fac5-49c8-90cb-461e530a3505-582357",
            "language": "en",
            "date": "2022-10-20T09:41:49+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-100-3649-P0917 - AWARD",
                "title": "P0917 DOLPHIN CENTRE BUILDING IMPROVEMENT WORKS - AWARD",
                "description": "The Council wishes to establish a contract for building improvements works at the Dolphin Centre, Ward End Park.\\n      \\n      The Contract will be for a construction period of up to 8 months (unless terminated under the terms and conditions of contract). \\n      \\n      The contract will be awarded to a single supplier.\\n      \\n      European Regional Development Fund\\n      The whole project, including this building project and the aligned landscape project, is receiving funding from the England European Regional Development Fund as part of the European Structural and Investment Funds Growth Programme 2014-2020. The Department for Levelling Up, Housing and Communities is the Managing Authority for the European Regional Development Fund. Established by the European Union, the European Regional Development Fund helps local areas stimulate their economic development by investing in projects which will support innovation, businesses, create jobs and local community regenerations. For more information visit https://www.gov.uk/european-growth-funding.\\n      \\n      Midlands Engine \\n      The government is committed to making the Midlands an Engine for Growth in the UK, increasing economic growth and improving the quality of life for everyone. The Midlands is home to over 10 million people and over 780,000 businesses. Its economy is worth £217.7 billion.  Alongside over €750 million of European Regional Development Fund support for businesses and communities across the Midlands, the government has awarded £1.9 billion in three rounds of Growth Deals.",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "71315000",
                    "description": "Building services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "45112712",
                        "description": "Landscaping work for gardens"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45112700",
                        "description": "Landscaping work"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45210000",
                        "description": "Building construction work"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45212000",
                        "description": "Construction work for buildings relating to leisure, sports, culture, lodging and restaurants"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45211350",
                        "description": "Multi-functional buildings construction work"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "B4 7DJ"
                            },
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "selective",
                "procurementMethodDetails": "Negotiated procedure",
                "tenderPeriod": {
                    "endDate": "2022-05-20T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-06-28T01:00:00+01:00",
                    "endDate": "2023-04-04T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "works"
            },
            "parties": [
                {
                    "id": "GB-CFS-43899",
                    "name": "Birmingham City Council",
                    "identifier": {
                        "legalName": "Birmingham City Council"
                    },
                    "address": {
                        "streetAddress": "1 Lancaster Circus, Birmingham",
                        "locality": "West Midlands",
                        "postalCode": "B4 7DJ",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Tina Nandra",
                        "email": "Tina.K.Nandra@birmingham.gov.uk",
                        "telephone": "0121 303 0020"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224746",
                    "name": "Building Services NOW",
                    "identifier": {
                        "legalName": "Building Services NOW"
                    },
                    "address": {
                        "streetAddress": "Dudley Court South,, Waterfront East, Level Street, United Kingdom, DY5 1XN"
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-43899",
                "name": "Birmingham City Council"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-8af6ed71-be4a-4cf4-bb4b-bbb35e04cbfa-1",
                    "status": "active",
                    "date": "2022-06-28T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:41:49+01:00",
                    "value": {
                        "amount": 1875000,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224746",
                            "name": "Building Services NOW"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-06-28T00:00:00+01:00",
                        "endDate": "2023-04-04T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/97e3ebe6-fac5-49c8-90cb-461e530a3505",
                            "datePublished": "2022-10-20T09:41:49+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        }
"""
}

