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
  @Published var releases = [Release]()
  
  var filteredReleases = [Release]()
  
  /// CPVModel will be included in second release
  //  @Published var cpvModel = CPVModel()
  
  
  //MARK: - Properties
  
  
  /// Report the model status
  enum ViewModelStatus : Equatable {
    
    case unloaded
    case dataLoaded
    case dataLoadFailed(error: EquatableError)
    case invalidUrl(invalidUrl: String)
  }
  
  var viewModelStatus = ViewModelStatus.unloaded
  
  var cancelSearchFlag = false
  
  var oneOrMoreContractsIsSelected: Bool {
    cfModel.cfSearch.releases.contains(where: {$0.isSelected})
  }
  
  var modelIsLoading: Bool {
    cfModel.modelStatus == .loading
  }
  
  var oneOrMoreContractsIsFiltered: Bool {
    cfModel.cfSearch.releases.contains(where: {$0.isFiltered})
  }
  
  var oneOrMoreContractsSaved: Bool {
    cfModel.savedContracts.count > 0 ? true : false
  }
  
  //MARK: - Init
  init() {
    loadSavedContracts()
  }
  
  //MARK: - Public functions
  func search(urlString: String = Constants.searchText)   {
    cfModel.modelStatus = .loading
    cancelSearchFlag    = false
    cfModel.cfSearch    = CFSearch()
    
    let searchStr = buildSearchString()
    
    loadMessages(urlString: searchStr)
  }
  
  func toggleSelectedFor(index: Int) {
    cfModel.cfSearch.releases[index].toggleIsSelected()
  }
  
  var selectAllFlag = false
  
  func selectAll() {
    selectAllFlag.toggle()
    cfModel.cfSearch.setAllSelectedTo(selectAllFlag)
  }
  
  
  var savedContractsOnDisplay = false
  /**
   The user has pressed the "Saved Contracts" button.
   
   If the saved cntracts are not currently displayes, and there
   are saved cntracts to display, then the saved contracts will be loaded
   into releases.
   
   If the saved records are already on display, then the original releases will be
   reloaded.
   */
  func showSavedContracts() {
    if savedContractsOnDisplay {
      releases = cfModel.cfSearch.releases
      savedContractsOnDisplay = false
    } else {
      if !cfModel.savedContracts.isEmpty {
        releases = cfModel.savedContracts
        savedContractsOnDisplay = true
      }
    }
  }
  
  // Delete function
  func deleteContracts(at offsets: IndexSet) {
    cfModel.cfSearch.deleteContracts(at: offsets)
    releases = cfModel.cfSearch.releases
  }
  
  func deleteSavedContracts(at offsets: IndexSet) {
    cfModel.deleteSavedContracts(at: offsets)
    releases = cfModel.cfSearch.releases
  }
  
  func saveSelectedContracts() {
    cfModel.saveSelectedContracts()
  }
  
  //MARK: - Private functions
  private func loadSavedContracts() {
    if let savedContracts = readJSONData(from: Constants.savedContractsFile, as: [Release].self) {
      cfModel.savedContracts = savedContracts
    }
    print("loadSavedContracts: \(cfModel.savedContracts.count)")
  }
  
  private func loadMessages (urlString: String) {
    
    if cancelSearchFlag {
      cfModel.modelStatus = .loaded
      return
    }
    
    if cfModel.cfSearch.releases.count >= settings.searchReleaseMax {
      cfModel.modelStatus = .loaded
      return
    }
    
    if let url = URL(string: urlString) {
      Task {
        do {
          
          let cfSearch = try await URLSession.shared.decode(CFSearch.self,
                                                            from: url,
                                                            dateDecodingStrategy: .iso8601)
          
          
          if cfModel.cfSearch.uri.isEmpty {
            cfModel.cfSearch = cfSearch
          } else {
            cfModel.cfSearch.releases.append(contentsOf: cfSearch.releases)
          }
          
          if !settings.filterByText.isEmpty {
            cfModel.filterBy(userText: settings.filterByText)
          }
          
          cfModel.sort(CFModel.SortType.alpha)
          
          releases = cfModel.cfSearch.releases
          
          if let nextUrl = cfSearch.links?.next {
            cfModel.modelStatus = .loading
            loadMessages(urlString: nextUrl)
            
          } else {
            cfModel.modelStatus = .loaded
          }
        } catch {
          cfModel.modelStatus = .loadingError
          viewModelStatus     = .dataLoadFailed(error: EquatableError(error))
        } // catch
      } // Task
    } else {
      viewModelStatus = .invalidUrl(invalidUrl: urlString)
    }
  } // func loadMessages
  
  func cancelSearch() {
    cancelSearchFlag = true
  }
  
} // CFViewModel


