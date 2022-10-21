//
//  DeliveryAddress_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

import XCTest
@testable import UKContracts

final class DeliveryAddress_Tests: XCTestCase {
  
  
  func test_allFields() throws {
    let sut = DeliveryAddress(region: "Birmingham", countryName: "England", postalCode: "B31 5HQ")
    XCTAssertEqual(sut.region, "Birmingham")
    XCTAssertEqual(sut.countryName, "England")
    XCTAssertEqual(sut.postalCode, "B31 5HQ")
    XCTAssertEqual(sut.fDeliveryAddress, "Birmingham, England, B31 5HQ")
  }
  
  func test_NoRegion() throws {
    let sut = DeliveryAddress(region: "", countryName: "England", postalCode: "B31 5HQ")
    XCTAssertEqual(sut.region, "")
    XCTAssertEqual(sut.countryName, "England")
    XCTAssertEqual(sut.postalCode, "B31 5HQ")
    XCTAssertEqual(sut.fDeliveryAddress, "England, B31 5HQ")
  }
  
  func test_OnlyRegion() throws {
    let sut = DeliveryAddress(region: "Portsmouth", countryName: "", postalCode: "")
    XCTAssertEqual(sut.region, "Portsmouth")
    XCTAssertEqual(sut.countryName, "")
    XCTAssertEqual(sut.postalCode, "")
    XCTAssertEqual(sut.fDeliveryAddress, "Portsmouth")
  }
  
  func test_RegionNoCountry() throws {
    let sut = DeliveryAddress(region: "Birmingham", countryName: "", postalCode: "B31 5HQ")
    XCTAssertEqual(sut.region, "Birmingham")
    XCTAssertEqual(sut.countryName, "")
    XCTAssertEqual(sut.postalCode, "B31 5HQ")
    XCTAssertEqual(sut.fDeliveryAddress, "Birmingham, B31 5HQ")
  }
  
  func test_CountryOnly() throws {
    let sut = DeliveryAddress(region: "", countryName: "England", postalCode: "")
    XCTAssertEqual(sut.region, "")
    XCTAssertEqual(sut.countryName, "England")
    XCTAssertEqual(sut.postalCode, "")
    XCTAssertEqual(sut.fDeliveryAddress, "England")
  }
  
  func test_AllNils() throws {
    let sut = DeliveryAddress(region: nil, countryName: nil, postalCode: nil)
    XCTAssertNil(sut.region)
    XCTAssertNil(sut.countryName)
    XCTAssertNil(sut.postalCode)
    XCTAssertEqual(sut.fDeliveryAddress, "")
  }
  
  func test_PostcodeOnly() throws {
    let sut = DeliveryAddress(region: "", countryName: "", postalCode: "B31 5HQ")
    XCTAssertEqual(sut.region, "")
    XCTAssertEqual(sut.countryName, "")
    XCTAssertEqual(sut.postalCode, "B31 5HQ")
    XCTAssertEqual(sut.fDeliveryAddress, "B31 5HQ")
  }

  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
  }
  
  func testExample() throws {
  }
  
  func testPerformanceExample() throws {
    self.measure {
    }
  }
}

