//
//  CFViewModel.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import SwiftUI

@MainActor
class CFViewModel: ObservableObject {
  
  //MARK: - Published objects
  @Published var cpvModel = CPVModel()
  @Published var cfModel  = CFModel()
  @Published var settings = SettingsModel()
  
  //MARK: - Properties
  var cfSearch = CFSearch()
  
  
  /// Report the model status
  enum ViewModelStatus : Equatable {
    
    case unloaded
    case dataLoaded
    case dataLoadFailed(error: EquatableError)
    case invalidUrl(invalidUrl: String)
  }
  
  var viewModelStatus = ViewModelStatus.unloaded
  
  //MARK: - Init
  init() {
  }
  
  
  //MARK: - Public functions
  func loadMessages (urlString: String) {
    
    if let url = URL(string: urlString) {
      Task {
        do {
          cfModel.cfSearch = try await URLSession.shared.decode(CFSearch.self,
                                                                from: url,
                                                                dateDecodingStrategy: .iso8601)
        } catch {
          viewModelStatus = .dataLoadFailed(error: EquatableError(error))
          cfModel.cfSearch = cfSearch
        } // catch
      } // Task
    } else {
      viewModelStatus = .invalidUrl(invalidUrl: urlString)
    }
  } // func loadMessages
  
  //MARK: - CPV Intents
  
  // Deselects all the CPV's
  func deselectAll() {
    cpvModel.deselectAll()
  } // func deselectAll()
  
  /// Filter the CPV's by the user's search string
  func filterCPVs(by searchText: String) {
    cpvModel.filterCPVs(by: searchText, settings: settings)
  } //  func filterCPVs
  
  /// Selects all the CPV's
  func selectAll() {
    cpvModel.selectAll()
  } // func selectAll()
  
  /// Toggles the isSelected flag
  func toggleIsSelected(for cpv: CPV) {
    cpvModel.toggleIsSelected(for: cpv)
  } // func toggleIsSelected()
  
  
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
  
  
  //MARK: - Search Intents
  func search()   {
    let thisFunction = "\(String(describing: self)).\(#function)"
    print(thisFunction)
    
  } // func search()
} // CFViewModel

