//
//  CFListView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 29/10/2022.
//

import SwiftUI

struct CFListView: View {
  
  // Environment
  @Environment(\.presentationMode) var presentationMode
  
  /// Observed object - ViewModel
  @ObservedObject var cfViewModel: CFViewModel
  
  /// True when user is searching
  @Environment(\.isSearching) var isSearching
  
  /// Search text
  @StateObject private var searchText = Debouncer(initialValue: "", delay: 1.0)
  
  var body: some View {
    ZStack(alignment: .top) {
      Constants.backgroundColour
        .ignoresSafeArea()
      
      VStack {
        
        Text("Contracts")
          .font(.title2)
          .foregroundColor(Constants.textColor)
        
        NavigationStack {
          List {
            ForEach(cfViewModel.cfModel.cfSearch.releases ?? []) { release in
              
              NavigationLink(destination: CFReleaseView(release: release)) {
                Text(release.tender.title)
                  .foregroundColor(.white)
              }
              
              .listRowBackground(Constants.backgroundColour)
            } // ForEach
          } // List
          .background(Constants.backgroundColour)
          .scrollContentBackground(.hidden)
        } // NavigationStack
        
        Spacer()
        userOptions
      } // VStack
    } // ZStack
    
    /// Searching
    .searchable(text: $searchText.input,
                placement: .navigationBarDrawer(displayMode: .always))
    
    .onChange(of: searchText.output) {searchText in
      cfViewModel.search(searchText)
    } // .onChange
    
  }
  
  private var userOptions: some View {
    HStack {
      showReturnButton
      Spacer()
      showSortButton
    }
    .padding()
  } // userOptions
  
  //MARK: - Buttons
  private var showReturnButton: some View {
    Button {
      presentationMode.wrappedValue.dismiss()
    }
  label: {
    Image(systemName: "return")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title)
  } // showReturnButton
  
  
  private var showSortButton: some View {
    Button {
      cfViewModel.sort()
    }
  label: {
    if cfViewModel.cfModel.sortStatus == .alpha {
      Text("Date")
    } else {
      Text("A-Z")
    }
    Image(systemName: "arrow.up.arrow.down")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title)
  } // showSortButton
}

struct CFListView_Previews: PreviewProvider {
  
  static let cfViewModel = CFViewModel()
  
  static var previews: some View {
    CFListView(cfViewModel: cfViewModel)
  }
}
