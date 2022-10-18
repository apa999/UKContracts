//
//  CFViewModel.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import SwiftUI

@MainActor
class CFViewModel: ObservableObject {
  
  @Published var cfModel = CFModel()
  
  var cfSearch = CFSearch()
  
  func loadMessages () {
    Task {
      do {
        let url = URL(string: Constants.searchText)!
        
        cfModel.cfSearch = try await URLSession.shared.decode(CFSearch.self,
                                                              from: url,
                                                              dateDecodingStrategy: .iso8601)
      } catch {
        print(error)
        cfModel.cfSearch = cfSearch
      }
    }
  }
}
