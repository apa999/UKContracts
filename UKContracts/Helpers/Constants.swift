//
//  Constants.swift
//  Lloyds
//
//  Created by Anthony Abbott on 17/10/2022.
//

import SwiftUI

struct Constants {
  
  /// Search
  static let searchText  = "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?"
  static let searchText1 = "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?limit=1"
  static let searchText5 = "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?limit=5"
  
  static let ocidBaseUrl = "https://www.contractsfinder.service.gov.uk/notice/"
  
  /// CPV Constants
  static let CpvCodes = "CpvCodes"
  static let cpvCodeDataNumberOfFields = 4
  
  /// N.B. Append the CPV code and ".html", for example,  "http://cpv.data.ac.uk/code-19000000.html"
  static let cpvCodeURL = "http://cpv.data.ac.uk/code-"
  
  
  /// Gradients
  static let linearGradientStartColour = Color.teal
  static let linearGradientStopColour  = Color.blue
  static let angularGradientColours    = [Color.red, Color.orange, Color.yellow, Color.purple, Color.teal, Color.blue]
  
  /// Settings
  static let settingsTextColor = Color.blue
  
  /// General UI
  static var divider : some View {
    Divider().frame(height: 2).overlay(.red).padding(5)
  }
  
  /// General
  static let backgroundColour = Color.blue
  static let textColor        = Color.white
  static let noContracts      = "No contracts"
  
  static let searchMessage = """
Click the magnifying glass to search using the default settings,
or select the CPV codes or settings option to set the search parameters.
"""
} // struct Constants

