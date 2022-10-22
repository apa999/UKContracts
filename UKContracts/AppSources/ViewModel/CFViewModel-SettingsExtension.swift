//
//  CFViewModel-SettingsExtension.swift
//  UKContracts
//
//  Created by Anthony Abbott on 22/10/2022.
//

import Foundation

extension CFViewModel {
  
  //MARK: - Settings Intents
  
  /// Toggles the Award flag
  func toggleAward() {
      settings.toggleAward()
  } // func toggleAward()
  
  
  /// Toggles the Implmentation flag
  func toggleImplmentation() {
    settings.toggleImplmentation()
  } // func toggleImplmentation()
  
  /// Toggles the Planning flag
  func togglePlanning() {
    settings.togglePlanning()
  } // func togglePlanning()
  
  /// Toggles the SME flag
  func toggleSME() {
    settings.toggleSME()
  } // func toggleSME()
  
  /// Toggles the Tender flag
  func toggleTender() {
    settings.toggleTender()
  } // func toggleTender()
  
  /// Toggles the VCO flag
  func toggleVCO() {
    settings.toggleVCO()
  } // func toggleVCO()
  
} // extension CFViewModel
