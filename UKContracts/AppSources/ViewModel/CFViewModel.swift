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
  
 
  //MARK: - Public functions
  func search(urlString: String = Constants.searchText)   {
    cfModel.modelStatus = .loading
    
    let searchStr = buildSearchString()
    
    loadMessages(urlString: searchStr)
  } // func search()
  
  //MARK: - Private functions
  private func loadMessages (urlString: String) {
    if let url = URL(string: urlString) {
      Task {
        do {
          cfModel.cfSearch = try await URLSession.shared.decode(CFSearch.self,
                                                                from: url,
                                                                dateDecodingStrategy: .iso8601)
          
          cfModel.sort(CFModel.SortType.alpha)
          
          cfModel.modelStatus = .loaded
        } catch {
          cfModel.modelStatus = .loadingError
          viewModelStatus     = .dataLoadFailed(error: EquatableError(error))
          cfModel.cfSearch    = cfSearch
        } // catch
      } // Task
    } else {
      viewModelStatus = .invalidUrl(invalidUrl: urlString)
    }
  } // func loadMessages
} // CFViewModel


