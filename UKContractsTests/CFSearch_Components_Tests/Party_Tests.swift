//
//  Party_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Party
/*
 
 struct Party : Codable, Identifiable {
   let id           : String?
   let name         : String?
   let identifier   : Identifier?
   let address      : Address?
   let contactPoint : ContactPoint?
   let details      : Details?
   let roles        : [String]
 }
*/


import XCTest
@testable import UKContracts

final class Party_Tests: XCTestCase {
  
  let testParty = Party(id: "GB-SRS-sid4gov.cabinetoffice.gov.uk/dXGP288m",
                name:"UK SHARED BUSINESS SERVICES LIMITED", identifier: Identifier(legalName: "UK SHARED BUSINESS SERVICES LIMITED", scheme: "GB-SRS", id: "sid4gov.cabinetoffice.gov.uk/dXGP288m"), address: Address(streetAddress: "Polaris House,North Star Avenue", locality: "SWINDON", postalCode: "SN21FF", countryName: "England"), contactPoint: ContactPoint(name: "Scientific Research", email: "scientificresearch@uksbs.co.uk", telephone: "01214577588"), details: Details(url: "https://www.uksbs.co.uk/", scale: "", vcse: false), roles: ["buyer0", "buyer1"])
  
  let dataStr = """
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/hWvd872d",
                    "name": "Natural England",
                    "identifier": {
                        "legalName": "Natural England",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/hWvd872d"
                    },
                    "address": {
                        "streetAddress": "Natural England, Guildbourne House, Chatsworth",
                        "locality": "Worthing",
                        "postalCode": "BN11  1LD",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Glen Cooper",
                        "email": "glen.cooper@naturalengland.org.uk",
                        "telephone": "+447789050916"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
"""
  
  func test_Init() throws {
    
    let sut = testParty
    
    XCTAssertEqual(sut.id, "GB-SRS-sid4gov.cabinetoffice.gov.uk/dXGP288m")
    XCTAssertEqual(sut.name, "UK SHARED BUSINESS SERVICES LIMITED")
    XCTAssertEqual(sut.roles.count, 2)
  }
  
  func test_Decode() throws {
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Party.self,from: data)
      
      XCTAssertNotNil(sut)
      
      XCTAssertEqual(sut.id, "GB-SRS-sid4gov.cabinetoffice.gov.uk/hWvd872d")
      XCTAssertEqual(sut.name, "Natural England")
      XCTAssertEqual(sut.roles.count, 1)
    } catch {
      XCTFail("Failed to decode: \(error)")
    }
  }
  
  func test_Identifier() throws {
    
    let sut = testParty.identifier
    
    XCTAssertNotNil(sut)
    XCTAssertEqual(sut!.id, "sid4gov.cabinetoffice.gov.uk/dXGP288m")
    XCTAssertEqual(sut!.scheme, "GB-SRS")
    XCTAssertEqual(sut!.legalName, "UK SHARED BUSINESS SERVICES LIMITED")
  }
  
  func test_Address() throws {
    
    let sut = testParty.address
    
    XCTAssertNotNil(sut)
    XCTAssertEqual(sut!.streetAddress, "Polaris House,North Star Avenue")
    XCTAssertEqual(sut!.postalCode, "SN21FF")
    XCTAssertEqual(sut!.countryName, "England")
    XCTAssertEqual(sut!.locality, "SWINDON")
  }
  
  func test_ContactPoint() throws {
    
    let sut = testParty.contactPoint
    
    XCTAssertNotNil(sut)
    XCTAssertEqual(sut!.name, "Scientific Research")
    XCTAssertEqual(sut!.telephone, "01214577588")
    XCTAssertEqual(sut!.email, "scientificresearch@uksbs.co.uk")
  }

  func test_Details() throws {
    
    let sut = testParty.details
    
    XCTAssertNotNil(sut)
    XCTAssertEqual(sut!.url, "https://www.uksbs.co.uk/")
    XCTAssertEqual(sut!.scale, "")
    XCTAssertEqual(sut!.vcse, false)
  }
  
  func test_Roles() throws {
    
    let sut = testParty.roles
    
    XCTAssertNotNil(sut)
    XCTAssertEqual(sut.count , 2)
    XCTAssertEqual(sut[0], "buyer0")
    XCTAssertEqual(sut[1], "buyer1")
  }
  
  
 
  
  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
}

