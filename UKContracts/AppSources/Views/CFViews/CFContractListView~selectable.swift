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
    
    let navBarAppearance = UINavigationBarAppearance()
    navBarAppearance.backgroundColor = UIColor.systemBlue // Background color
    navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white] // Title color
    navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white] // Large title color
    
    UINavigationBar.appearance().standardAppearance   = navBarAppearance
    UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
  }
  
  var body: some View {
    NavigationStack {
      ZStack(alignment: .top) {
        Constants.backgroundColour
          .ignoresSafeArea()
        
        VStack {
          
          /// Custom Search Bar Integration to prevent search bar leaping to
          /// the top of the screen and hiding the save button
          searchBar
          
          /// Avoid an empty list - this gives us a white background
          if let releases = cfViewModel.cfModel.cfSearch.releases {
            
            List {
              ForEach(releases.indices, id: \.self) { index in
                HStack {
                  Text(getTextFor(releases[index]))
                    .onTapGesture {
                      selectedRelease = releases[index]
                    }
                  Spacer()
                  Image(systemName: releases[index].selected ? "checkmark.circle.fill" : "circle.dashed")
                    .foregroundColor(.white)
                    .onTapGesture {
                      cfViewModel.toggleSelectedFor(index: index)
                    }
                }
              }
              .onDelete(perform: deleteItems)
              .listRowBackground(Constants.backgroundColour)
              .foregroundColor(.white)
            }
            .background(Constants.backgroundColour)
            .scrollContentBackground(.hidden)
            
            if isShowingContractDetail == false {
              userOptions
            }
          } else {
            VStack {
              Spacer()
              ProgressView("Downloading").foregroundColor(Constants.textColor).font(.title3)
              Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Constants.backgroundColour)
            .foregroundColor(.white)
          }
        } // VStack
        .background(Constants.backgroundColour)
        .navigationTitle("Contracts")
      }
      .toolbar {
        ToolbarItem (placement: .topBarTrailing) {
          Button("Save") {
            saveSelectedContracts()
          }
          .foregroundColor(.white)
        }
      }
    }
    .background(Constants.backgroundColour)
    
    .sheet(item: $selectedRelease) { release in
      CFContractDetailView(release: release,
                           isShowingContractDetail: $isShowingContractDetail)
    }
    
    .onChange(of: searchText.output) {searchText in
      cfViewModel.search(searchText)
    } // .onChange
  }
  
  // Delete function
  private func deleteItems(at offsets: IndexSet) {
    cfViewModel.deleteItems(at: offsets)
  }
  
  private func getTextFor(_ release: Release) -> String {
    
    if cfViewModel.cfModel.sortType == .alpha {
      return release.tender.title
    } else {
      return "\(release.formattedDate) - \(release.tender.title)"
    }
  }
  
  private func saveSelectedContracts() {
    print("saveSelectedContracts")
  }
  
  private var searchBar: some View {
    HStack {
      TextField("", text: $searchText.input, prompt: Text("Search").foregroundColor(.white))
        .padding(7)
        .padding(.horizontal, 25)
//        .background(Color(.systemGray6))
        .foregroundStyle(.white)
        .cornerRadius(8)
        .overlay(
          HStack {
            Spacer()
            if !searchText.input.isEmpty {
              Button(action: {
                searchText.input = ""
              }) {
                Image(systemName: "xmark.circle.fill")
                  .foregroundColor(.gray)
                  .padding(.trailing, 8)
              }
            }
          }
        )
        .padding(.horizontal, 10)
    }
    .padding(.top, 10)
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

