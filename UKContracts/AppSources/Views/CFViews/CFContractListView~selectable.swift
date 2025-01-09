//
//  CFContractListView~selectable.swift
//  UKContracts
//
//  Created by Anthony Abbott on 09/01/2025.
//

import SwiftUI

struct CFContractListViewS: View {
  
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
          .font(.title)
          .foregroundColor(.white)
          .padding(.top)
        
        /// Avoid an empty list - this gives us a white background
        if let releases = cfViewModel.cfModel.cfSearch.releases {
          
          List(releases.indices, id: \.self) { index in
            HStack {
              Text(getTextFor(releases[index]))
              Spacer()
              if releases[index].selected == true {
                Image(systemName: "checkmark.circle.fill")
                  .foregroundColor(.white)
              }
            }
            .contentShape(Rectangle()) // Make the whole row tappable
            .onTapGesture {
              cfViewModel.toggleSelectedFor(index: index)
            }
            .listRowBackground(Constants.backgroundColour)
            .foregroundColor(.white)
          }
          .background(Constants.backgroundColour)
          .scrollContentBackground(.hidden)
          
          if isShowingContractDetail == false {
            userOptions
          }
        } else {
          Spacer()
          ProgressView("Downloading").foregroundColor(Constants.textColor).font(.title3)
          Spacer()
        }
        
      } // VStack
      .background(Constants.backgroundColour)
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
  
  private func getTextFor(_ release: Release) -> String {
    
    if cfViewModel.cfModel.sortType == .alpha {
      return release.tender.title
    } else {
      return "\(release.formattedDate) - \(release.tender.title)"
    }
  }
  
  private var userOptions: some View {
    HStack {
      showSortButtonAlpha
      Spacer()
      showSelectAllButton
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
    .font(.title3)
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
    .font(.title3)
  } // showSortButtonReleaseData
  
  private var showSelectAllButton: some View {
    Button {
      cfViewModel.selectAll()
    }
    label: {
//      Text(cfViewModel.selectAllFlag ?  "Deselect all" : "Select all")
      Image(systemName: cfViewModel.selectAllFlag ? "minus.square" : "checkmark.square")
    } // label
    .foregroundColor(Constants.textColor)
    .font(.title3)
  } // showSortButtonReleaseData
}

struct CFListView_PreviewsS: PreviewProvider {
  
  static let cfViewModel = CFViewModel()
  
  static var previews: some View {
    CFContractListViewS(cfViewModel: cfViewModel)
  }
}

