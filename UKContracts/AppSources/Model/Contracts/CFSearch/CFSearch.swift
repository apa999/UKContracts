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
  var releases          : [Release]?
  let links             : Links?
  
  mutating func filterReleasesBy(userText: String) {
    releases = releases?.filter({$0.contains(userText: userText)})
  }
  
  mutating func toggleSelectedFor(index: Int) {
    releases?[index].toggleSelected()
  }
  
  mutating func setAllSelectedTo(_ selected: Bool) {
    if let _ = releases {
      for index in releases!.indices {
        releases?[index].selected = selected
      }
    }
  }
  
  mutating func deleteItems(at offsets: IndexSet) {
    releases?.remove(atOffsets: offsets)
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
    releases          = nil
    links             = nil
  }
}























