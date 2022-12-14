//
//  Item_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

// MARK: - Item
/*
 struct Item : Codable, Equatable, Hashable {
   
   let id                : String?
   let deliveryAddresses : [DeliveryAddress]?
   
   static func == (lhs: Item, rhs: Item) -> Bool {
     return lhs.id == rhs.id
   }
   
   func hash(into hasher: inout Hasher) {
     hasher.combine(id)
     hasher.combine(deliveryAddresses)
   }
 }
 */

import XCTest
@testable import UKContracts

final class Item_Tests: XCTestCase {
  
  let deliveryAddress1 = DeliveryAddress(region: "Birmingham", countryName: "England", postalCode: "B31 5HQ")
  let deliveryAddress2 = DeliveryAddress(region: "Portsmouth", countryName: "England", postalCode: "PO4 8SX")
  let deliveryAddress3 = DeliveryAddress(region: "London", countryName: "England", postalCode: "SW1A 1AA")
  
  func test_Init() throws {
    let sut = Item(id: "id", deliveryAddresses: [deliveryAddress1])
    
    XCTAssertEqual(sut.id, "id")
    XCTAssertNotNil(sut.deliveryAddresses)
    XCTAssertEqual(sut.deliveryAddresses?.count, 1)
  }
  
  func test_AddressCount() throws {
    let sut = Item(id: "id", deliveryAddresses: [deliveryAddress1, deliveryAddress2, deliveryAddress3])
  
    XCTAssertNotNil(sut.deliveryAddresses)
    XCTAssertEqual(sut.deliveryAddresses?.count, 3)
  }

  func test_Equality() throws {
    let sut1 = Item(id: "id", deliveryAddresses: [deliveryAddress1])

    XCTAssertEqual(sut1, sut1)
  }
  
  func test_InqEquality() throws {
    let sut1 = Item(id: "id", deliveryAddresses: [deliveryAddress1])
    let sut2 = Item(id: "id", deliveryAddresses: [deliveryAddress2])

    XCTAssertNotEqual(sut1, sut2)
  }
  
  func test_Decode() throws {
    
    let data = Data(dataStr.utf8)
    
    do {
      let sut = try TestHelpers.decode(Item.self,from: data)
      
      XCTAssertNotNil(sut)
      
      XCTAssertEqual(sut.id, "1")
      XCTAssertEqual(sut.deliveryAddresses?.count,4)
      XCTAssertEqual(sut.deliveryAddresses![0].countryName, "United Kingdom")
      XCTAssertEqual(sut.deliveryAddresses![1].region, "Wales")
      XCTAssertEqual(sut.deliveryAddresses![3].region, "Northern Ireland")
    
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
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "Wales",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "Scotland",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "Northern Ireland",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
"""
}

