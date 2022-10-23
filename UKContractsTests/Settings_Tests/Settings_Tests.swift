//
//  Settings_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 23/10/2022.
//

import XCTest
@testable import UKContracts


final class Settings_Tests: XCTestCase {
 
  func test_Settings_Award() throws {
    
    /// Get the Settings Model
    var sut = SettingsModel()
    
    /// Uninitialised clean install will default to false
    XCTAssertFalse(sut.award)
    
    /// Toggle the flag - should now be true
    sut.toggleAward()
    XCTAssertTrue(sut.award)

    /// Toggle the flag - should now be false
    sut.toggleAward()
    XCTAssertFalse(sut.award)
  }


  func test_Settings_Implmentation() throws {
    
    /// Get the Settings Model
    var sut = SettingsModel()
    
    /// Uninitialised clean install will default to false
    XCTAssertFalse(sut.implmentation)
    
    /// Toggle the flag - should now be true
    sut.toggleImplmentation()
    XCTAssertTrue(sut.implmentation)

    /// Toggle the flag - should now be false
    sut.toggleImplmentation()
    XCTAssertFalse(sut.implmentation)
  }


  func test_Settings_Planning() throws {
    
    /// Get the Settings Model
    var sut = SettingsModel()
    
    /// Uninitialised clean install will default to false
    XCTAssertFalse(sut.planning)
    
    /// Toggle the flag - should now be true
    sut.togglePlanning()
    XCTAssertTrue(sut.planning)

    /// Toggle the flag - should now be false
    sut.togglePlanning()
    XCTAssertFalse(sut.planning)
  }


  func test_Settings_Tender() throws {
    
    /// Get the Settings Model
    var sut = SettingsModel()
    
    /// Uninitialised clean install will default to false
    XCTAssertFalse(sut.tender)
    
    /// Toggle the flag - should now be true
    sut.toggleTender()
    XCTAssertTrue(sut.tender)

    /// Toggle the flag - should now be false
    sut.toggleTender()
    XCTAssertFalse(sut.tender)
  }


  func test_Settings_Sme() throws {
    
    /// Get the Settings Model
    var sut = SettingsModel()
    
    /// Uninitialised clean install will default to false
    XCTAssertFalse(sut.sme)
    
    /// Toggle the flag - should now be true
    sut.toggleSME()
    XCTAssertTrue(sut.sme)

    /// Toggle the flag - should now be false
    sut.toggleSME()
    XCTAssertFalse(sut.sme)
  }


  func test_Settings_Vco() throws {
    
    /// Get the Settings Model
    var sut = SettingsModel()
    
    /// Uninitialised clean install will default to false
    XCTAssertFalse(sut.vco)
    
    /// Toggle the flag - should now be true
    sut.toggleVCO()
    XCTAssertTrue(sut.vco)

    /// Toggle the flag - should now be false
    sut.toggleVCO()
    XCTAssertFalse(sut.vco)
  }
  
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    
    /// Remove all defaults at end of tests so we start with a clean slate
    if let bundleID = Bundle.main.bundleIdentifier {
        UserDefaults.standard.removePersistentDomain(forName: bundleID)
    }
  }
}
