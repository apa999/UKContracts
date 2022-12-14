//
//  DeliveryAddress_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//


// MARK: - DeliveryAddress
/*
 struct DeliveryAddress : Codable, Hashable {
   let region      : String?
   let countryName : String?
   let postalCode  : String?
 }
 */

import XCTest
@testable import UKContracts

final class DeliveryAddress_Tests: XCTestCase {
  
  /*
   if let region, region.count > 0 {
     address = (postalCode?.count ?? 0 > 0 || countryName?.count ?? 0 > 0) ? "\(region), \(address)" : region
   }
   */
  
  func test_fDeliveryAddress() throws {
    var sut = DeliveryAddress(region: "", countryName: "England", postalCode: "B31 5HQ")
    XCTAssertEqual(sut.fDeliveryAddress, "England, B31 5HQ")
    
    sut = DeliveryAddress(region: "Portsmouth", countryName: "England", postalCode: "B31 5HQ")
    XCTAssertEqual(sut.fDeliveryAddress, "Portsmouth, England, B31 5HQ")
    
    sut = DeliveryAddress(region: "", countryName: "", postalCode: "B31 5HQ")
    XCTAssertEqual(sut.fDeliveryAddress, "B31 5HQ")
    
    sut = DeliveryAddress(region: "", countryName: "", postalCode: "")
    XCTAssertEqual(sut.fDeliveryAddress, "")
    
    sut = DeliveryAddress(region: "Northfield", countryName: "", postalCode: "")
    XCTAssertEqual(sut.fDeliveryAddress, "Northfield")
    
    sut = DeliveryAddress(region: "Northfield", countryName: "Scotland", postalCode: "")
    XCTAssertEqual(sut.fDeliveryAddress, "Northfield, Scotland")
  }
  
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

  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(DeliveryAddress.self,from: data)
      
      XCTAssertNotNil(sut)
      
      XCTAssertEqual(sut.region, "West Midlands")
      XCTAssertEqual(sut.countryName, "United Kingdom")
      XCTAssertEqual(sut.postalCode, "B4 7DJ")
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
  "postalCode": "B4 7DJ",
  "region": "West Midlands",
  "countryName": "United Kingdom"
 }
"""
}

