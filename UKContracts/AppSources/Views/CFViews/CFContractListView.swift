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
  
  /// True when contract details are visible
  @State var isShowingContractDetail = false
  
  /// Search text
  @StateObject private var searchText = Debouncer(initialValue: "", delay: 1.0)
  
  @State var selectedRelease: Release?
  
  
  
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
        
        
        List(cfViewModel.cfModel.cfSearch.releases ?? []) { release in
          Text(release.tender.title).onTapGesture
          {
            selectedRelease = release
          }
          .foregroundColor(.white)
          .listRowBackground(Constants.backgroundColour)
        } // List
        .background(Constants.backgroundColour)
        .scrollContentBackground(.hidden)
        
        
        if isShowingContractDetail == false {
          userOptions
        }
      } // VStack
    } // ZStack
    
    .sheet(item: $selectedRelease) { release in
      CFContractDetailView(release: release,
                           isShowingContractDetail: $isShowingContractDetail)
    }
    
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
      cfViewModel.sort(CFModel.SortType.alpha)
    }
  label: {
    if cfViewModel.cfModel.alphaSortStatus == .alphaDown {
      Text("A-Z")
      Image(systemName: "arrow.up")
    } else {
      Text("Z-A")
      Image(systemName: "arrow.down")
    }

  } // label
  .foregroundColor(Constants.textColor)
  .font(.title)
  } // showSortButtonAlpha
  
  private var showSortButtonReleaseData: some View {
    Button {
      cfViewModel.sort(CFModel.SortType.releaseDate)
    }
  label: {
    Text("Date")
    if cfViewModel.cfModel.releasedateSortStatus == .releaseDateDown {
      Image(systemName: "arrow.up")
    } else {
      Image(systemName: "arrow.down")
    }
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
