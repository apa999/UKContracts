//
//  CFDataModel.swift
//  TestCF
//
//  Created by Anthony Abbott on 13/10/2022.
//



import Foundation

// MARK: - CFSearch
struct CFSearch : Codable {
  let uri               : String
  let version           : String
  let extensions        : [String]
  let publishedDate     : Date
  let publisher         : Publisher
  let license           : String
  let publicationPolicy : String
  var releases          = [Release]()
  let links             : Links?
  
  mutating func filterReleasesBy(userText: String) {
    releases = releases.filter({$0.contains(userText: userText)})
  }
  
  mutating func toggleSelectedFor(index: Int) {
    releases[index].toggleIsSelected()
  }
  
  mutating func setAllSelectedTo(_ isSelected: Bool) {
    for index in releases.indices {
      releases[index].isSelected = isSelected
    }
  }
  
  mutating func deleteContracts(at offsets: IndexSet) {
    
    let isValid = offsets.allSatisfy { $0 >= 0 && $0 < releases.count }
    
    guard isValid else {
      fatalError("\(#fileID) \(#line) - Invalid offsets provided.")
    }
    
    releases.remove(atOffsets: offsets)
  }
}

extension CFSearch {
  init() {
    uri               = ""
    version           = ""
    extensions        = [""]
    publishedDate     = Date()
    publisher         = Publisher(name: "", scheme: "", uid: "", uri: "")
    license           = ""
    publicationPolicy = ""
    releases          = [Release]()
    links             = nil
  }
}























