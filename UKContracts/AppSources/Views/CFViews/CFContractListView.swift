//
//  CFContractListView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 29/10/2022.
//

import SwiftUI

struct CFContractListView: View {
  
  /// Observed object - ViewModel
  @ObservedObject var cfViewModel: CFViewModel
  
  /// True when user is searching
  @Environment(\.isSearching) var isSearching
  
  /// True when user is searching
  @State var isShowingRelease = false
  
  /// Search text
  @StateObject private var searchText = Debouncer(initialValue: "", delay: 1.0)
  
  /// Set the navigation bar appearance - this is shown when the user scrolls upwards
  init(cfViewModel : CFViewModel) {
    
    self.cfViewModel = cfViewModel
    
    UINavigationBar.appearance().barTintColor = UIColor.systemBlue
  }
  
  var body: some View {
    ZStack(alignment: .top) {
      Constants.backgroundColour
        .ignoresSafeArea()
      
      VStack {
        Text("Contracts")
          .font(.title2)
          .foregroundColor(.white)
        
        NavigationStack {
          List(cfViewModel.cfModel.cfSearch.releases ?? []) { release in
            NavigationLink(release.tender.title) {
              CFContractDetailView(release: release,
                                   isShowingRelease: $isShowingRelease)
            }
            .foregroundColor(.white)
            .listRowBackground(Constants.backgroundColour)
          } // List
          .background(Constants.backgroundColour)
          .scrollContentBackground(.hidden)
        } // NavigationStack
        
        if isShowingRelease == false {
          userOptions
        }
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
      showSortButtonAlpha
      Spacer()
      showSortButtonReleaseData
    }
    .padding()
  } // userOptions
  
  //MARK: - Buttons
  private var showSortButtonAlpha: some View {
    Button {
      cfViewModel.cfModel.sortStatus = .alpha
      cfViewModel.sort()
    }
  label: {
    Text("A-Z")
    Image(systemName: "arrow.up.arrow.down")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title)
  } // showSortButtonAlpha
  
  private var showSortButtonReleaseData: some View {
    Button {
      cfViewModel.cfModel.sortStatus = .releaseDate
      cfViewModel.sort()
    }
  label: {
    Text("Date")
    Image(systemName: "arrow.up.arrow.down")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title)
  } // showSortButtonReleaseData
  
}

struct CFListView_Previews: PreviewProvider {
  
  static let cfViewModel = CFViewModel()
  
  static var previews: some View {
    CFContractListView(cfViewModel: cfViewModel)
  }
}
