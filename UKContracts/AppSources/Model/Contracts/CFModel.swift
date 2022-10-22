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
 
  /// Save the releases here when filtering; use this to restore releases
  var savedRelease: [Release]?

  
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
    case unsorted
    case alpha
    case releaseDate
    
    mutating func next() {
      switch self {
        case .unsorted    : self = .alpha
        case .alpha       : self = .releaseDate
        case .releaseDate : self = .alpha
      }
    }
  }
  
  var sortStatus = SortStatus.unsorted
  
  //MARK: - Public functions model updates
  
  /// Filters the releases for searchStr
  mutating func search(_ searchStr: String) {
    
    /// If it is an empty string, then restore the savedSearch
    if searchStr.count == 0 {
      if let savedRelease = savedRelease {
        cfSearch.releases = savedRelease
      }
    } else {
      if let existingReleases = cfSearch.releases {
        savedRelease = existingReleases
      }
      
//      cfSearch.releases = filter(by: searchStr)
    }
  }
  
  /// Sorts the releases alphabetically or by date
  mutating func sort(status: SortStatus? = nil) {
    
    if let status = status , status != .unsorted {
      sortStatus = status
    } else {
      sortStatus.next()
    }
    
    switch sortStatus {
      case .unsorted    : fatalError("Program error - invalid sort option")
      case .alpha       : sortAlpha()
      case .releaseDate : sortReleaseDate()
    } // switch sortStatus
  } // mutating func sort()
  
 
  
  //MARK: - Private functions
  
  private func filter(by searchStr: String) {
    
    /// We should have guarded against this before calling
    guard cfSearch.releases != nil else {
      fatalError("Program error - trying to filter releasses when none exist")
    }
    
    ///Lower case the search string
    let str = searchStr.lowercased()
    
    /// Filter
//    let filteredReleases = cfSearch.releases.filter({$0.tender?.title.lowercased().contains(str) ?? ""})
//
//    let filteredReleases = cfSearch.releases.filter({$0.tender?.title.lowercased().contains(str)})
  }
  
  
  /// Sorts the releases by the tender title alphabetically
  mutating private func sortAlpha() {
    let sortedReleases = cfSearch.releases?.sorted(by: {
      $0.tender.title ?? "" < $1.tender.title ?? ""
    } )
    
    cfSearch.releases = sortedReleases
  }
  
  /// Sorts the releases by date with recent first
  mutating private func sortReleaseDate() {
    if let releases = cfSearch.releases {
      cfSearch.releases = releases.sorted { $0.date ?? Date() > $1.date ?? Date() }
    }
  }
}
