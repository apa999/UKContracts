//
//  CFReleaseListView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import SwiftUI

struct CFReleaseListView: View {
  
  // Environment
  @Environment(\.presentationMode) var presentationMode
  
  /// Observed object - ViewModel
  @ObservedObject var cfViewModel: CFViewModel
  
  var body: some View {
    VStack {
      
   Text("Releases")
        .font(.title2)
        .foregroundColor(Constants.textColor)
      
    NavigationView() {
      List() {
        ForEach(cfViewModel.cfModel.cfSearch.releases ?? []) { release in
          
          NavigationLink(destination: CFReleaseView(release: release))
          {
            Text(release.tender.title ?? "Missing tender")
              .foregroundColor(.white)
          } // NavigationLink
          .listRowBackground(Constants.backgroundColour)
        } // ForEach
      } // List
      .background(Constants.backgroundColour)
      .scrollContentBackground(.hidden)
    } // NavigationView
    } // VStack
    .background(Constants.backgroundColour)
  } // body
} // CFReleaseListView


struct CFReleaseListView_Previews: PreviewProvider {
  static let cfViewModel = CFViewModel()
  
  static var previews: some View {
    cfViewModel.search()
    return CFReleaseListView(cfViewModel: cfViewModel)
  }
}
