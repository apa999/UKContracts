//
//  CFModel.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import Foundation

struct CFModel {
  
  /// Main search objects, containing the releases []
  var cfSearch = CFSearch()
  
  /// Save the filtered contracts here; use this to restore releases
  var filteredContracts = [Release]()
  
  /// Saved contracts
  var savedContracts = [Release]()
  
  //MARK: - init
  init() {
  }
  
  /// Model status
  enum ModelStatus {
    case unloaded
    case loading
    case loaded
    case loadingError
  }
  
  /// Lets the ViewModel know what state the engine is in - to control the ProgressView()
  var modelStatus = ModelStatus.unloaded
  
  /// Track the sort status - unsorted, alphabetical, release date
  enum SortStatus {
    case unsorted, alphaUp, alphaDown, releaseDateUp, releaseDateDown
  }
  
  /// What type of sort
  enum SortType {
    case alpha, releaseDate
  }
  var sortType              = SortType.alpha
  var alphaSortStatus       = SortStatus.alphaDown
  var releasedateSortStatus = SortStatus.releaseDateDown
  
  //MARK: - Public functions model updates
  
  /// Filters the releases for searchStr
  mutating func search(_ searchStr: String) {
    
    /// If it is an empty string, then restore the savedSearch
    if searchStr.count == 0 {
      if filteredContracts.count > 0 {
        cfSearch.releases = filteredContracts
      }
    } else {
      
      if cfSearch.releases.count > filteredContracts.count {
        filteredContracts = cfSearch.releases
      }
      
      if let filteredReleases = filter(by: searchStr) {
        cfSearch.releases = filteredReleases
      }
    }
  }
  
  mutating func saveSelectedContracts() {
    let contractsToSave = cfSearch.releases.filter({$0.isSelected})
    for contract in contractsToSave {
      if !savedContracts.contains(where: {$0.id == contract.id}) {
        savedContracts.append(contract)
      }
    }
    print("Saving saved contracts to disk")
    saveJSONData(savedContracts, to: Constants.savedContractsFile)
  }
  
  /// Sorts the releases alphabetically or by date
  mutating func sort(_ sortType: SortType) {
    switch sortType {
    case .alpha         : sortAlpha()
    case .releaseDate   : sortReleaseDate()
    } // switch sortType
  } // mutating func sort()
  
  
  mutating func filterBy(userText: String) {
    cfSearch.filterReleasesBy(userText: userText)
  }
  
  mutating func deleteSavedContracts(at offsets: IndexSet) {
    
    let isValid = offsets.allSatisfy { $0 >= 0 && $0 < savedContracts.count }
    
    guard isValid else {
      fatalError("\(#fileID) \(#line) - Invalid offsets provided.")
    }
    
    savedContracts.remove(atOffsets: offsets)
    saveJSONData(savedContracts, to: Constants.savedContractsFile)
  }
  
  //MARK: - Private functions
  
  private func filter(by searchStr: String) -> [Release]? {
    
    ///Lower case the search string
    let str = searchStr.lowercased()
    
    /// Filter
    if !cfSearch.releases.isEmpty {
      return cfSearch.releases.filter({$0.tender.title.lowercased().contains(str)})
    }
    
    return nil
  } // private func filter
  
  
  /// Sorts the releases by the tender title alphabetically
  mutating private func sortAlpha() {
    
    var sortedReleases: [Release]?
    
    sortType = .alpha
    
    alphaSortStatus = alphaSortStatus == .alphaUp ? .alphaDown : .alphaUp
    
    if alphaSortStatus == .alphaUp {
      sortedReleases = cfSearch.releases.sorted(by: {
        $0.tender.title < $1.tender.title
      } )
    } else {
      sortedReleases = cfSearch.releases.sorted(by: {
        $0.tender.title > $1.tender.title
      } )
    }
    
    if let sortedReleases {
      cfSearch.releases = sortedReleases
    }
  }
  
  /// Sorts the releases by date with recent first
  mutating private func sortReleaseDate() {
    
    var sortedReleases: [Release]?
    
    sortType = .releaseDate
    
    releasedateSortStatus = releasedateSortStatus == .releaseDateUp ? .releaseDateDown : .releaseDateUp
    
    if releasedateSortStatus == .releaseDateUp {
      sortedReleases = cfSearch.releases.sorted { $0.date ?? Date() > $1.date ?? Date() }
    } else {
      sortedReleases = cfSearch.releases.sorted { $0.date ?? Date() < $1.date ?? Date() }
    }
    
    if let sortedReleases {
      cfSearch.releases = sortedReleases
    }
  }
}
