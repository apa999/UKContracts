//
//  SettingsModel.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import SwiftUI

struct SettingsModel {
  
  let defaults = UserDefaults.standard
  
  @AppStorage(keys.award)             var award             = false
  @AppStorage(keys.implmentation)     var implmentation     = false
  @AppStorage(keys.planning)          var planning          = false
  @AppStorage(keys.tender)            var tender            = false
  @AppStorage(keys.sme)               var sme               = false
  @AppStorage(keys.vco)               var vco               = false
  
  @AppStorage(keys.publishedFromDate) var publishedFromDate = Date()
  @AppStorage(keys.publishedToDate)   var publishedToDate   = Date()
  
  @AppStorage(keys.cpvFilteredString) var cpvFilteredString = ""
  
  @AppStorage("\(keys.selectedCPVs)", store: UserDefaults(suiteName: "\(keys.selectedCPVs)"))
  var selectedCPVs: Data = Data()
  
  @AppStorage("\(keys.searchedCPVs)", store: UserDefaults(suiteName: "\(keys.searchedCPVs)"))
  var searchedCPVs: Data = Data()
  
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
  } // keys
  
  /// Returns an array of the CPV codes that are selected
  func getIsSelected() -> [String] {
    
    return Storage.loadStringArray(data: selectedCPVs)
  } // func setIsSelected
  
  /// Save the selected CPV's
  func saveSelected(cpvs: [CPV]) {
    var selectedCpvCodes = [String]()
    
    for cpv in cpvs {
      selectedCpvCodes.append(cpv.code)
    }
    
    selectedCPVs = Storage.archiveStringArray(object: selectedCpvCodes)
  } // func saveSelected()
  
  /// Returns an array of the CPV codes that are selected
  func getFilteredCpvs() -> [String] {
    Storage.loadStringArray(data: searchedCPVs)
  } // func getSearched(
  
  /// Save the searched CPV's
  func saveFilteredCpvs(cpvs: [CPV]) {
    var searchedCpvCodes = [String]()
    
    for cpv in cpvs {
      searchedCpvCodes.append(cpv.code)
    }
    
    searchedCPVs = Storage.archiveStringArray(object: searchedCpvCodes)
  } // func saveSearched()
 
  
  
} // SettingsModel

/// Store Dates as AppStorage
extension Date: RawRepresentable {
  public var rawValue: String {
    self.timeIntervalSinceReferenceDate.description
  }
  
  public init?(rawValue: String) {
    self = Date(timeIntervalSinceReferenceDate: Double(rawValue) ?? 0.0)
  }
}

