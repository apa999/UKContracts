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
 
  /// The current selected release - can be optional when user has selected a release-1
  var currentRelease: Release? {
    didSet {
      print("currentRelease: \(currentRelease?.id ?? "Current release has no id")")
    }
  }
  
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
  
  
  //MARK: - model updates
  
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
}
