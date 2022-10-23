//
//  CFContacts_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 23/10/2022.
//

import XCTest
@testable import UKContracts

final class CFContacts_Tests: XCTestCase {
  
  func test_Contact() throws {
    
    /// Load the test releases
    let dummyDataLoader = DummyDataLoader()
    let cfSearch        = dummyDataLoader.load(data: TestData.fiveReleasesData)
    
    /// Check that we have loaded okay
    XCTAssertNotNil(cfSearch.releases)
    XCTAssertEqual(cfSearch.releases?.count, 5)
    
    XCTAssertNotNil(cfSearch.releases![0].parties)
    XCTAssertEqual(cfSearch.releases![0].parties!.count, 2)
    
    let sut = CFContacts.add(cfSearch.releases![0].parties![1])
    
    XCTAssertNotNil(sut)
    let email : String = sut!.emailAddresses.first!.value as String
    XCTAssertEqual(email, "contact@queenscollege.org.uk")
    
    let name : String = sut!.familyName as String
    XCTAssertEqual(name, "Queen's College Taunton")
   
    let street : String = sut!.postalAddresses.first!.value.street as String
    XCTAssertEqual(street, "Trull Road")
    
    let postcode : String = sut!.postalAddresses.first!.value.postalCode as String
    XCTAssertEqual(postcode, "TA1 4QS")
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}
