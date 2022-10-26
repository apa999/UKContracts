//
//  CFPartyView.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 26/10/2022.
//

import XCTest
@testable import UKContracts

final class CFPartyView_Tests: XCTestCase {

  let testParty = Party(id: "GB-SRS-sid4gov.cabinetoffice.gov.uk/dXGP288m",
                name:"UK SHARED BUSINESS SERVICES LIMITED", identifier: Identifier(legalName: "UK SHARED BUSINESS SERVICES LIMITED", scheme: "GB-SRS", id: "sid4gov.cabinetoffice.gov.uk/dXGP288m"), address: Address(streetAddress: "Polaris House,North Star Avenue", locality: "SWINDON", postalCode: "SN21FF", countryName: "England"), contactPoint: ContactPoint(name: "Scientific Research", email: "scientificresearch@uksbs.co.uk", telephone: "01214577588"), details: Details(url: "https://www.uksbs.co.uk/", scale: "", vcse: false), roles: ["buyer0", "buyer1"])
  
  func test_CFPartyView() throws {
    let sut = CFPartyView(parties: [testParty])

    XCTAssertNotNil(sut)
  }

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}

