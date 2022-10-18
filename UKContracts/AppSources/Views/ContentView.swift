//
//  ContentView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var cfViewModel: CFViewModel
  
  var body: some View {
    
    NavigationView {
      List {
        ForEach(cfViewModel.cfModel.cfSearch.releases ?? []) { release in
          
          NavigationLink(destination: CFDetailView(release: release))
          {
            Text(release.tender?.title ?? "Missing tender")
          } // NavigationLink
          
        } // ForEach
      } // List
      .navigationTitle("Government Contracts")
      .navigationBarTitleDisplayMode(.inline)
    }
    .onAppear{
      cfViewModel.loadMessages()
    }
  } // body
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(cfViewModel: CFViewModel())
  }
}
