//
//  CFModel.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import Foundation

struct CFModel {
  
  /// Main search objects, contauining the releases []
  var cfSearch = CFSearch() {
    didSet{
      if let firstRelease = cfSearch.releases?.first {
        self.currentRelease = firstRelease
      }
    }
  }
 
  /// The current selected release - can be optional when user has selected a release
  /// Actually not used - needed for CPV
  var currentRelease: Release?

  
  //MARK: - init
  init() {
    if let firstRelease = cfSearch.releases?.first {
      self.currentRelease = firstRelease
    }
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
  
  //MARK: - model updates
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
  
  /// Sets the current release to the next
  mutating func setNextRelease() {
    if let currentRelease = currentRelease, let releases = cfSearch.releases {
      if let firstIndex = releases.firstIndex(where: {$0.id == currentRelease.id }) {
        if firstIndex < releases.count - 1 {
          self.currentRelease = releases[firstIndex + 1]
        }
      }
    }
  } // mutating func setNextRelease
  
  /// Sets the current release to the previous
  mutating func setPrevRelease() {
    if let currentRelease = currentRelease, let releases = cfSearch.releases {
      if let firstIndex = releases.firstIndex(where: {$0.id == currentRelease.id }) {
        if firstIndex > 0 {
          self.currentRelease = releases[firstIndex - 1]
        }
      }
    }
  } // mutating func setPrevRelease()
  
  //MARK: - Private functions
  
  /// Sorts the releases by the tender title alphabetically
  mutating private func sortAlpha() {
    let sortedReleases = cfSearch.releases?.sorted(by: {
      $0.tender?.title ?? "" < $1.tender?.title ?? ""
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
