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
  @StateObject private var filterText = Debouncer(initialValue: "", delay: 1.0)
  
  @State var contractsToDisplay = [Release]()
  
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
          filterBar
          
          /// Avoid an empty list - this gives us a white background
          
          if !cfViewModel.releases.isEmpty {
            listOfContracts(contractsToDisplay: cfViewModel.releases)
            if isShowingContractDetail == false {
              userOptions
            }
          } else {
            VStack {
              Spacer()
              ProgressView("Retrieving contracts").foregroundColor(Constants.textColor).font(.title3)
              Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Constants.backgroundColour)
            .foregroundColor(.white)
          }
        } // VStack
        .background(Constants.backgroundColour)
        .navigationTitle(getNavigationTitle())
      }
      
      .toolbar {
        ToolbarItem (placement: .topBarLeading) {
          Button(cfViewModel.savedContractsOnDisplay ? "Contracts" : "Saved") {
            cfViewModel.showSavedContracts()
          }
          .foregroundColor(cfViewModel.oneOrMoreContractsSaved ? .white : .gray)
          .disabled(!cfViewModel.oneOrMoreContractsSaved)
        }

        if cfViewModel.modelIsLoading {
          ToolbarItem (placement: .bottomBar) {
            Button("Stop search") {
              cfViewModel.cancelSearch()
            }
            .foregroundColor(.red)
            .font(.title)
          }
        }
        
        ToolbarItem (placement: .topBarTrailing) {
          Button("Save") {
            saveSelectedContracts()
          }
          .foregroundColor(cfViewModel.oneOrMoreContractsIsSelected ? .white : .gray)
          .disabled(!cfViewModel.oneOrMoreContractsIsSelected)
        }
      }
    }
    .background(Constants.backgroundColour)
    
    .sheet(item: $selectedRelease) { release in
      CFContractDetailView(release: release,
                           isShowingContractDetail: $isShowingContractDetail)
    }
    
    .onChange(of: filterText.output) {filterText in
      cfViewModel.filter(filterText)
    } // .onChange
  }
  
  // Delete function
  private func deleteItems(at offsets: IndexSet) {
    if cfViewModel.savedContractsOnDisplay {
      cfViewModel.deleteSavedContracts(at: offsets)
    } else {
      cfViewModel.deleteContracts(at: offsets)
    }
  }
  
  private func getTextFor(_ release: Release) -> String {
    
    if cfViewModel.cfModel.sortType == .alpha {
      return release.tender.title
    } else {
      return "\(release.formattedDate) - \(release.tender.title)"
    }
  }
  
  private func getNavigationTitle() -> String {
    var title = ""
    
    if cfViewModel.savedContractsOnDisplay {
      title = "Saved contracts - \(cfViewModel.cfModel.savedContracts.count)"
    } else {
      title = "Contracts  - \(cfViewModel.releases.count)"
      if cfViewModel.cfModel.modelStatus == .loading {
        title += " *"
      }
    }
   
    return title
  }
  
  private func saveSelectedContracts() {
    cfViewModel.saveSelectedContracts()
  }
  
  fileprivate func listOfContracts(contractsToDisplay: [Release]) -> some View {
    return List {
      ForEach(contractsToDisplay.indices, id: \.self) { index in
        HStack {
          Text(getTextFor(contractsToDisplay[index]))
            .onTapGesture {
              selectedRelease = contractsToDisplay[index]
            }
          Spacer()
          Image(systemName: contractsToDisplay[index].isSelected ? "checkmark.circle.fill" : "circle.dashed")
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
  }
  
  private var filterBar: some View {
    HStack {
      TextField("", text: $filterText.input, prompt: Text("Filter").foregroundColor(.white))
        .padding(7)
        .padding(.horizontal, 25)
//        .background(Color(.systemGray6))
        .foregroundStyle(.white)
        .cornerRadius(8)
        .overlay(
          HStack {
            Spacer()
            if !filterText.input.isEmpty {
              Button(action: {
                filterText.input = ""
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

