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
}

