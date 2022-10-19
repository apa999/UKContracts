//
//  CFCLView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import SwiftUI

struct CFContractListView: View {
  
  /// Observed object - ViewModel
  @ObservedObject var cfViewModel: CFViewModel
  
  var body: some View {
    NavigationView {
      List {
        ForEach(cfViewModel.cfModel.cfSearch.releases ?? []) { release in
          
          NavigationLink(destination: CFDetailView(release: release))
          {
            Text(release.tender?.title ?? "Missing tender")
              .foregroundColor(.white)
          } // NavigationLink
          .listRowBackground(Constants.backgroundColour)
        } // ForEach
      } // List
      .background(Constants.backgroundColour)
      .scrollContentBackground(.hidden)
    }
  }
}
