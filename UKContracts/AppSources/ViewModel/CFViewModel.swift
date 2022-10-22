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
  
  @Published var cfModel  = CFModel()
  @Published var settings = SettingsModel()
  
  /// CPVModel will be included in second release
//  @Published var cpvModel = CPVModel()

  
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
  
  //MARK: - CPV Intents
  

  
  
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
  
  
  //MARK: - Short cut to current release
  var release: Release? {
    cfModel.currentRelease
  }
  
  //MARK: - Search Intents
  
  /// Tell the model to make the next release current
  func setNextRelease() {
    cfModel.setNextRelease()
  }
  
  /// Tell the model to make the prev release current
  func setPrevRelease() {
    cfModel.setPrevRelease()
  }
  
  func search(urlString: String = Constants.searchText)   {
    cfModel.modelStatus = .loading
    loadMessages(urlString: urlString)
  } // func search()
  
  
  
  
  //MARK: - Private functions
  private func loadMessages (urlString: String) {
    if let url = URL(string: urlString) {
      Task {
        do {
          cfModel.cfSearch = try await URLSession.shared.decode(CFSearch.self,
                                                                from: url,
                                                                dateDecodingStrategy: .iso8601)
          cfModel.modelStatus = .loaded
        } catch {
          cfModel.modelStatus = .loadingError
          viewModelStatus = .dataLoadFailed(error: EquatableError(error))
          cfModel.cfSearch = cfSearch
        } // catch
      } // Task
    } else {
      viewModelStatus = .invalidUrl(invalidUrl: urlString)
    }
  } // func loadMessages
} // CFViewModel


