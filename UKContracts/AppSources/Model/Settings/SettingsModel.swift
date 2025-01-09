//
//  SettingsModel.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import SwiftUI

struct SettingsModel {
  
  let defaults = UserDefaults.standard
  
  @AppStorage(keys.award)             var award             = true
  @AppStorage(keys.implmentation)     var implmentation     = true
  @AppStorage(keys.planning)          var planning          = true 
  @AppStorage(keys.tender)            var tender            = true
  @AppStorage(keys.sme)               var sme               = false
  @AppStorage(keys.vco)               var vco               = false
  
  @AppStorage(keys.publishedFromDate) var publishedFromDate = Date()
  @AppStorage(keys.publishedToDate)   var publishedToDate   = Date()
  
  @AppStorage(keys.cpvFilteredString) var cpvFilteredString = ""
  
  @AppStorage("\(keys.selectedCPVs)", store: UserDefaults(suiteName: "\(keys.selectedCPVs)"))
  var selectedCPVs: Data = Data()
  
  @AppStorage("\(keys.searchedCPVs)", store: UserDefaults(suiteName: "\(keys.searchedCPVs)"))
  var searchedCPVs: Data = Data()
  
  @AppStorage("\(keys.filterByText)", store: UserDefaults(suiteName: "\(keys.filterByText)"))
  var filterByText: String = ""
  
  struct keys {
    static let award         = "CF.award"
    static let implmentation = "CF.implmentation"
    static let planning      = "CF.planning"
    static let tender        = "CF.tender"
    static let sme           = "CF.sme"
    static let vco           = "CF.vco"
    
    static let cpvFilteredString = "CF.cpvFilteredString"
    static let selectedCPVs      = "CF.selectedCPVs"
    static let searchedCPVs      = "CF.searchedCPVs"
    static let publishedFromDate = "CF.publishedFromDate"
    static let publishedToDate   = "CF.publishedToDate"
    static let filterByText      = "CF.filterByText"
  } // keys
  
  //MARK: - Settings Functions
  
  /// Toggles the Award flag
  mutating func toggleAward() {
    award.toggle()
  }
  
  /// Toggles the Implmentation flag
  mutating func toggleImplmentation() {
    implmentation.toggle()
  }
  
  /// Toggles the Planning flag
  mutating func togglePlanning() {
    planning.toggle()
  }
  
  /// Toggles the Tender flag
  mutating func toggleTender() {
    tender.toggle()
  }
  
  /// Toggles the SME flag
  mutating func toggleSME() {
    sme.toggle()
  }
  
  /// Toggles the VCO flag
  mutating func toggleVCO() {
    vco.toggle()
  }
} // SettingsModel

/// Store Dates as AppStorage
extension Date: @retroactive RawRepresentable {
  public var rawValue: String {
    self.timeIntervalSinceReferenceDate.description
  }
  
  public init?(rawValue: String) {
    self = Date(timeIntervalSinceReferenceDate: Double(rawValue) ?? 0.0)
  }
}

