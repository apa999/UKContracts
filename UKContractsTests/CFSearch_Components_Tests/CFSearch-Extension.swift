//
//  CFSearch-Extension.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import XCTest
@testable import UKContracts

/// Static data and function for testing only
///


extension CFSearch {
  
  
  //MARK: - Classification test data
  static let classification1 = Classification(scheme: "CPV",
                                              id: "48000000",
                                              classificationDescription: "Software package and information systems")
  //MARK: - Document test data
  static let DocumentTest1 = Document(id: "1",
          documentType: "tenderNotice",
          documentDescription: "Opportunity notice on Contracts Finder" ,
          url: "https://www.contractsfinder.service.gov.uk/Notice/a0943966-090b-469d-9756-223cde76a5f2",
                                      datePublished: Date(),
                                      format: "text/html" ,
                                      language: "en",
                                      dateModified: nil
   )

  static let DocumentTest2 = Document(id: "2",
          documentType: "tenderNotice",
          documentDescription: "Opportunity notice on Contracts Finder" ,
          url: "https://www.contractsfinder.service.gov.uk/Notice/4c84fe67-e384-4302-972e-cd99c4a7e85e",
                                      datePublished: Date(),
                                      format: "text/html" ,
                                      language: "en",
                                      dateModified: nil
   )

  // Wed 19 Oct 2022, 15:00
  static let DocumentTest3 = Document(id: "3",
          documentType: "tenderNotice",
          documentDescription: "Opportunity notice on Contracts Finder" ,
          url: "https://www.contractsfinder.service.gov.uk/Notice/0074298d-4a64-4684-8e47-8e94f3afcfc3",
                                      datePublished: TestHelpers.getDateFor("2022-10-19T14:00:15+0000"),
                                      format: "text/html" ,
                                      language: "en",
                                      dateModified: nil
   )

//  static let DocumentTest4 = Document(id: "4",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/7c853ca3-347e-466b-94d1-b4232c48ef65",
//          datePublishedStr: "2022-10-19 14:00:03 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest5 = Document(id: "5",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/8cf6e73f-b79b-4b80-a588-9b86348e13d3",
//          datePublishedStr: "2022-10-19 13:59:43 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest6 = Document(id: "6",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/fc5ed996-93af-48fd-bfd3-b1c5a2527e99",
//          datePublishedStr: "2022-10-19 13:58:55 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest7 = Document(id: "7",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/f4831350-2d0c-4f0c-8ab5-991595746a4e",
//          datePublishedStr: "2022-10-19 13:55:01 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest8 = Document(id: "8",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/37d9a92c-8fc1-4784-a16b-2814859fc880",
//          datePublishedStr: "2022-10-19 13:53:12 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest9 = Document(id: "9",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/f8fd2750-2ac7-4adb-851d-512e9c21ff3f",
//          datePublishedStr: "2022-10-19 13:52:16 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
  static let DocumentTest10 = Document(id: "10",
          documentType: "tenderNotice",
          documentDescription: "Opportunity notice on Contracts Finder" ,
          url: "https://www.contractsfinder.service.gov.uk/Notice/0c038c84-8164-4027-8664-32e5d480bf71",
                                       datePublished: Date(),
                                       format: "text/html" ,
                                       language: "en",
                                       dateModified: nil
   )
//
//  static let DocumentTest11 = Document(id: "11",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/0f47dcb8-ed32-4052-85e7-cca2ec421a55",
//          datePublishedStr: "2022-10-19 13:46:38 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest12 = Document(id: "12",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/6ab6722c-d93d-4936-b8df-98f381521f71",
//          datePublishedStr: "2022-10-19 13:44:47 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest13 = Document(id: "13",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/816d3c43-805d-4978-b0f6-5540b813ddd5",
//          datePublishedStr: "2022-10-19 13:43:44 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest14 = Document(id: "14",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/64875eb7-cbfe-4be7-b3ba-86f6cf81686a",
//          datePublishedStr: "2022-10-19 13:35:17 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest15 = Document(id: "15",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/47619fe1-80c9-49c9-b629-3c0c50a168f1",
//          datePublishedStr: "2022-10-19 13:35:08 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest16 = Document(id: "16",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/15edbbff-0178-4faa-84bc-fc7d6c83d0a6",
//          datePublishedStr: "2022-10-19 13:35:03 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest17 = Document(id: "17",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/84c64737-eaca-468c-b435-ef41aaebace7",
//          datePublishedStr: "2022-10-19 13:30:09 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
  
  /*
   
   XCTAssertEqual(sut.formattedDatePublished, "Thu 6 Oct 2022, 11:56")
   XCTAssertEqual(sut.formattedDateModified,  "Wed 19 Oct 2022, 14:24")
   */
  
  static let DocumentTest18 = Document(id: "18",
          documentType: "tenderNotice",
          documentDescription: "Opportunity notice on Contracts Finder" ,
          url: "https://www.contractsfinder.service.gov.uk/Notice/cefc9804-f06a-4c14-807c-bb48ccfed079",
                                       datePublished: TestHelpers.getDateFor("2022-10-6T10:56:00+0000"),
                                       format: "text/html" ,
                                       language: "en",
                                       dateModified: TestHelpers.getDateFor("2022-10-19T13:24:00+0000")
   )

//  static let DocumentTest19 = Document(id: "19",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/0d356100-eb22-4d16-bf24-9b90423103a5",
//          datePublishedStr: "2022-10-19 13:08:56 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest20 = Document(id: "20",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/a31820ba-163e-4407-8503-c616dd278f23",
//          datePublishedStr: "2022-10-19 13:05:01 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest21 = Document(id: "21",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/977ec4b6-99b9-4cdc-9d17-19746f0d2ab6",
//          datePublishedStr: "2022-10-19 13:02:13 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest22 = Document(id: "22",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/680cc826-63e7-4258-b19a-341fbbb27fae",
//          datePublishedStr: "2022-10-19 12:50:45 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest23 = Document(id: "23",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/edbc2b87-9a8d-4471-ae8b-e02ec1432e5e",
//          datePublishedStr: "2022-10-17 12:03:22 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: "2022-10-19 12:50:13 +0000"
//   )
//
//  static let DocumentTest24 = Document(id: "24",
//          documentType: "tenderNotice",
//          documentDescription: " documentDescription:nil" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/Attachment/09b66c7e-41c3-43b6-b419-5afe03939f1e",
//          datePublishedStr: nil,
//          format: "application/vnd.openxmlformats-officedocument.wordprocessingml.document" ,
//          language: nil,
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest25 = Document(id: "25",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/b25f5160-2473-40e8-b8a0-e11b496e55fe",
//          datePublishedStr: "2022-10-19 12:30:03 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest26 = Document(id: "26",
//          documentType: "tenderNotice",
//          documentDescription: "Please follow this link to view the notice." ,
//          url: "https://www.delta-esourcing.com/tenders/UK-GB-Swindon:-UKRI-2452-Surface-Cleanroom-at-the-STFC-Boulby-Underground-Laboratory/8Y9ZES76G8",
//          datePublishedStr: nil,
//          format: nil ,
//          language: nil,
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest27 = Document(id: "27",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/8bd0960f-0cf9-496a-989c-42d5252e8b5e",
//          datePublishedStr: "2022-10-19 12:06:07 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: "2022-10-19 12:22:35 +0000"
//   )
//
//  static let DocumentTest28 = Document(id: "28",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/754c43b5-a2b9-4c3d-b72e-c67a686c4bbf",
//          datePublishedStr: "2022-10-19 12:20:04 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest29 = Document(id: "29",
//          documentType: "tenderNotice",
//          documentDescription: "Please follow this link to view the notice." ,
//          url: "https://www.delta-esourcing.com/tenders/UK-GB-Leeds:-OCCUPATIONAL-HEALTH-PHYSICIAN/593S6M745G",
//          datePublishedStr: nil,
//          format: nil ,
//          language: nil,
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest30 = Document(id: "30",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/8bd0960f-0cf9-496a-989c-42d5252e8b5e",
//          datePublishedStr: "2022-10-19 12:06:07 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest31 = Document(id: "31",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/3c2aa7a7-cb26-455b-8f52-2ecd78f8229c",
//          datePublishedStr: "2022-10-19 11:58:11 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest32 = Document(id: "32",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/8397aa93-9799-4844-813b-806721b2d958",
//          datePublishedStr: "2022-10-19 11:48:47 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest33 = Document(id: "33",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/8bffeb43-ce11-4d08-9731-350e7b4c278b",
//          datePublishedStr: "2022-10-11 10:34:31 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: "2022-10-19 11:46:26 +0000"
//   )
//
//  static let DocumentTest34 = Document(id: "34",
//          documentType: " documentType:nil",
//          documentDescription: "Additional data" ,
//          url: "https://uk.eu-supply.com/app/rfq/rwlentrance_s.asp?PID=53848&B=UKAEA",
//          datePublishedStr: nil,
//          format: nil ,
//          language: nil,
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest35 = Document(id: "35",
//          documentType: " documentType:nil",
//          documentDescription: "User / Company" ,
//          url: "https://uk.eu-supply.com/ctm/Company/CompanyInformation/Index/72814",
//          datePublishedStr: nil,
//          format: nil ,
//          language: nil,
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest36 = Document(id: "36",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/d2866b50-6ccf-4405-bc4d-89e7bbf14edf",
//          datePublishedStr: "2022-10-19 11:44:04 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest37 = Document(id: "37",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/5ec139b2-636b-4c60-a245-b683fc83de50",
//          datePublishedStr: "2022-10-19 11:37:50 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest38 = Document(id: "38",
//          documentType: " documentType:nil",
//          documentDescription: " documentDescription:nil" ,
//          url: "https://www.adamprocure.co.uk",
//          datePublishedStr: nil,
//          format: nil ,
//          language: nil,
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest39 = Document(id: "39",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/e08e1768-118e-4592-8d43-d12f3e0a222b",
//          datePublishedStr: "2022-09-26 08:40:55 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: "2022-10-19 11:37:47 +0000"
//   )
//
//  static let DocumentTest40 = Document(id: "40",
//          documentType: " documentType:nil",
//          documentDescription: " documentDescription:nil" ,
//          url: "https://www.adamprocure.co.uk",
//          datePublishedStr: nil,
//          format: nil ,
//          language: nil,
//          dateModifiedStr: nil
//   )
//
//  static let DocumentTest41 = Document(id: "41",
//          documentType: "tenderNotice",
//          documentDescription: "Opportunity notice on Contracts Finder" ,
//          url: "https://www.contractsfinder.service.gov.uk/Notice/c42d5247-ed70-4c89-b86c-5efc2b238185",
//          datePublishedStr: "2022-10-19 11:36:45 +0000",
//          format: "text/html" ,
//          language: "en",
//          dateModifiedStr: nil
//   )


  

  //MARK: - Search test data
  
  
  
  
  /// Downloaded as JSON from "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?limit=1"
  /// Contains one release
  static let cfSearchTestString = """
{"uri":"https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/Search?limit=1&publishedTo=2022-10-18T17:10:13+01:00", "version": "1.1", "extensions": [ "https://standard.open-contracting.org/profiles/eu/master/en/extension.json", "https://raw.githubusercontent.com/portaledcahn/ocds_tenderDatePublished_extension/master/extension.json", "https://raw.githubusercontent.com/open-contracting-extensions/ocds_budget_breakdown_extension/master/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_awards_datePublished_extension/main/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_partyDetails_vcse_extension/main/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_tender_suitability_extension/main/extension.json", "https://raw.githubusercontent.com/open-contracting-extensions/ocds_pagination_extension/master/extension.json" ], "publishedDate": "2022-10-18T17:08:58+01:00", "publisher": {"name": "Cabinet Office", "scheme": "GB-GOR", "uid": "D2", "uri": "https://www.gov.uk/government/organisations/cabinet-office"}, "license": "http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/", "publicationPolicy": "https://www.gov.uk/government/publications/open-contracting", "releases": [ {"ocid": "ocds-b5fd17-18de5078-9cf3-479b-9e38-8b9d3f7a0e39", "id": "0dbd2a57-18f9-4b60-b195-928dda88f4dd-581847", "language": "en", "date": "2022-05-19T17:08:58+01:00", "tag": [ "award" ], "initiationType": "tender", "tender": {"id": "CON-22-237", "title": "RStudio License and Support", "description": "RStudio Workbench Enterprise Licenses and support", "status": "planned", "classification": {"scheme": "CPV", "id": "48000000", "description": "Software package and information systems"}, "items": [ {"id": "1", "deliveryAddresses": [ {"postalCode": "E20 1JN"} ] } ], "procurementMethod": "selective", "procurementMethodDetails": "Call-off from a framework agreement", "tenderPeriod": {"endDate": "2022-10-03T23:59:59+01:00"}, "contractPeriod": {"startDate": "2022-11-17T00:00:00Z", "endDate": "2024-03-31T23:59:59+01:00"}, "suitability": {"sme": true, "vcse": false }, "mainProcurementCategory": "services"}, "parties": [ {"id": "GB-GOR-OT1085", "name": "THE FINANCIAL CONDUCT AUTHORITY", "identifier": {"legalName": "THE FINANCIAL CONDUCT AUTHORITY", "scheme": "GB-GOR", "id": "OT1085"}, "address": {"streetAddress": "12 Endeavour Square", "locality": "LONDON", "postalCode": "E201JN", "countryName": "England"}, "contactPoint": {"name": "Victoria Stone", "email": "isprocurement@fca.org.uk"}, "roles": [ "buyer" ] }, {"id": "GB-COH-01616977", "name": "BYTES SOFTWARE SERVICES LIMITED", "identifier": {"legalName": "BYTES SOFTWARE SERVICES LIMITED", "scheme": "GB-COH", "id": "01616977"}, "address": {"streetAddress": "Randalls WayLEATHERHEADSURREYKT22 7TWGB"}, "details": {"scale": "large", "vcse": false }, "roles": [ "supplier" ] } ], "buyer": {"id": "GB-GOR-OT1085", "name": "THE FINANCIAL CONDUCT AUTHORITY"}, "awards": [ {"id": "ocds-b5fd17-18de5078-9cf3-479b-9e38-8b9d3f7a0e39-1", "status": "active", "date": "2022-10-06T00:00:00+01:00", "datePublished": "2022-10-18T17:08:58+01:00", "value": {"amount": 44341.25, "currency": "GBP"}, "suppliers": [ {"id": "GB-COH-01616977", "name": "BYTES SOFTWARE SERVICES LIMITED"} ], "contractPeriod": {"startDate": "2022-11-17T00:00:00Z", "endDate": "2024-03-31T23:59:59+01:00"}, "description": "RStudio Workbench Enterprise Licenses and support", "documents": [ {"id": "1", "documentType": "awardNotice", "description": "Awarded contract notice on Contracts Finder", "url": "https://www.contractsfinder.service.gov.uk/Notice/0dbd2a57-18f9-4b60-b195-928dda88f4dd", "datePublished": "2022-10-18T17:08:58+01:00", "format": "text/html", "language": "en"} ] } ] } ], "links": {"next": "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/Search?limit=1&publishedTo=2022-10-18T17:10:13+01:00&cursor=cHVibGlzaGVkVG89MjAyMi0xMC0xOFQxNzoxMDoxMyswMTowMHxsaW1pdD0xfG5leHRDdXJzb3I9NDgwMzc4"}}
"""
  /// Converts the test JSON string into data
  static let cfSearchTestData = Data(cfSearchTestString.utf8)
  
  /// Converts the test data into a CFSearch struct
  static func getTestCFSearch(data: Data = CFSearch.cfSearchTestData) -> CFSearch {
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy  = .useDefaultKeys
    decoder.dataDecodingStrategy = .deferredToData
    decoder.dateDecodingStrategy = .iso8601
    
    do {
      let cfSearch = try decoder.decode(CFSearch.self, from: data)
      
      return cfSearch
    } catch let DecodingError.dataCorrupted(context) {
      print("Context: \(context)")
    } catch let DecodingError.keyNotFound(key, context) {
      print("Key '\(key)' not found:", context.debugDescription)
      print("codingPath:", context.codingPath)
    } catch let DecodingError.valueNotFound(value, context) {
      print("Value '\(value)' not found:", context.debugDescription)
      print("codingPath:", context.codingPath)
    } catch let DecodingError.typeMismatch(type, context)  {
      print("Type '\(type)' mismatch:", context.debugDescription)
      print("codingPath:", context.codingPath)
    } catch {
      print("SearchEngine.search(): \(error.localizedDescription)")
      print("SearchEngine.search(): \(error)")
    }
    
    return CFSearch()
  }

  /// Converts the test data into a CFSearch struct
  static func getTestData() -> CFSearch {
    
    let jsonData = Data(TestDataString.utf8)
    
    let cfSearch = CFSearch.getTestCFSearch(data: jsonData)
   
    return cfSearch
  } // static func getTestData()
  
  /// Returns a value object from a tender
  static func getTenderHavingValue() -> Tender? {
  
    let jsonData = Data(TestDataString.utf8)
    
    let cfSearch = CFSearch.getTestCFSearch(data: jsonData)
    
    for release in cfSearch.releases ?? [] {
//      if let tender = release.tender {
//        if let _ = tender.value {
//          return tender
//        }
//      }
      
      
      if let _ = release.tender.value {
        return release.tender
        }
     
    }
    return nil
  } // static func getTenderHavingValue()
  
  /// Returns a tender with given status
  static func getTenderHavingStatus(_ status: String = "active") -> Tender? {
    let jsonData = Data(TestDataString.utf8)
    let cfSearch = CFSearch.getTestCFSearch(data: jsonData)
    
    for release in cfSearch.releases ?? [] {
      
     
        if release.tender.status == status {
          return release.tender
        }
   
      
//      if let tender = release.tender {
//        if tender.status == status {
//          return tender
//        }
//      }
    }
    return nil
  } // static func getTenderHavingStatus
  
  /// Returns a Release with given type
  static func getReleaseHavingType(_ type: String) -> Release? {
    let jsonData = Data(TestDataString.utf8)
    let cfSearch = CFSearch.getTestCFSearch(data: jsonData)
    
    for release in cfSearch.releases ?? [] {
      if let initiationType = release.initiationType {
       print(initiationType)
      }
    }
    return nil
  } // static func getReleaseHavingType
  
  /// Returns the parties from a release
  static func getParties(_ minNumberOfParties: Int = 1) -> [Party]? {
    let jsonData = Data(TestDataString.utf8)
    let cfSearch = CFSearch.getTestCFSearch(data: jsonData)
    
    for release in cfSearch.releases ?? [] {
      if let parties = release.parties {
        if parties.count >= minNumberOfParties {
          return parties
        }
      }
    }
    return nil
  } // static func getParties()
  
  /// Returns the awards from a release
  static func getAwards(_ minNumberOfAwards: Int = 1) -> [Award]? {
    let jsonData = Data(TestDataString.utf8)
    let cfSearch = CFSearch.getTestCFSearch(data: jsonData)
    
    for release in cfSearch.releases ?? [] {
      if let awards = release.awards {
        if awards.count >= minNumberOfAwards {
          return awards
        }
      }
    }
    return nil
  } // static func getAwards()
}
