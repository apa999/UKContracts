//
//  CFTenderView_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 01/11/2022.
//

import XCTest
@testable import UKContracts

final class CFTenderView_Tests: XCTestCase {
  
  func test_CFTenderView() throws {
    
    let data = Data(dataStr.utf8)
    
    let tender = try! TestHelpers.decode(Tender.self,from: data)
    
    let sut = CFTenderView(tender: tender)

    XCTAssertNotNil(sut)
    
    XCTAssertEqual(sut.tender.title, "P0917 DOLPHIN CENTRE BUILDING IMPROVEMENT WORKS - AWARD")
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  
  
  let dataStr = """
              {
                   "id": "IT-100-3649-P0917 - AWARD",
                   "title": "P0917 DOLPHIN CENTRE BUILDING IMPROVEMENT WORKS - AWARD",
                   "description": "The Council wishes to establish a contract for building improvements works at the Dolphin Centre, Ward End Park.\\n      \\n      The Contract will be for a construction period of up to 8 months (unless terminated under the terms and conditions of contract). \\n      \\n      The contract will be awarded to a single supplier.\\n      \\n      European Regional Development Fund\\n      The whole project, including this building project and the aligned landscape project, is receiving funding from the England European Regional Development Fund as part of the European Structural and Investment Funds Growth Programme 2014-2020. The Department for Levelling Up, Housing and Communities is the Managing Authority for the European Regional Development Fund. Established by the European Union, the European Regional Development Fund helps local areas stimulate their economic development by investing in projects which will support innovation, businesses, create jobs and local community regenerations. For more information visit https://www.gov.uk/european-growth-funding.\\n      \\n      Midlands Engine \\n      The government is committed to making the Midlands an Engine for Growth in the UK, increasing economic growth and improving the quality of life for everyone. The Midlands is home to over 10 million people and over 780,000 businesses. Its economy is worth £217.7 billion.  Alongside over €750 million of European Regional Development Fund support for businesses and communities across the Midlands, the government has awarded £1.9 billion in three rounds of Growth Deals.",
                   "datePublished" : "2022-05-19T23:59:59+01:00",
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
               }
 """
   
 
}
