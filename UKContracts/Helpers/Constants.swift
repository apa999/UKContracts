//
//  Constants.swift
//  Lloyds
//
//  Created by Anthony Abbott on 17/10/2022.
//

import Foundation

struct Constants {
  
  /// Search
  static let searchText1 = "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?limit=1"
  static let searchText  = "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?"
  static let national = "https://discovery.nationalarchives.gov.uk/results/r?_q=Slim&_sd=&_ed=&_hb="
  
  /// CPV Constants
  static let CpvCodes = "CpvCodes"
  static let cpvCodeDataNumberOfFields = 4
  
  /// N.B. Append the CPV code and ".html", for example,  "http://cpv.data.ac.uk/code-19000000.html"
  static let cpvCodeURL = "http://cpv.data.ac.uk/code-"
  
} // struct Constants

