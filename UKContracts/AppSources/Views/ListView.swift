//
//  ListView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import SwiftUI

struct ListView: View {
  
  /// Observed object - ViewModel
  @ObservedObject var cfViewModel: CFViewModel
  
  var body: some View {
    
    if (cfViewModel.cfModel.cfSearch.releases != nil) {
      releases
    } else {
      Text(Constants.noContracts)
        .foregroundColor(Constants.textColor)
        .font(.title3)
    }
  }
  
  var releases: some View {
    NavigationView {
      List {
        ForEach(cfViewModel.cfModel.cfSearch.releases ?? []) { release in
          
          NavigationLink(destination: CFDetailView(release: release))
          {
            Text(release.tender?.title ?? "Missing tender")
              .foregroundColor(.white)
          } // NavigationLink
          .listRowBackground(Color.blue)
        } // ForEach
      } // List
      .background(.blue)
      .scrollContentBackground(.hidden)
    }
  } // releases
}

struct ListView_Previews: PreviewProvider {
  static let cfViewModel = CFViewModel()
  static var previews: some View {
    ListView(cfViewModel: cfViewModel)
  }
}
