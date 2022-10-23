//
//  ContentView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import SwiftUI

struct ContentView: View {
  
  /// Observed object - ViewModel
  @ObservedObject var cfViewModel: CFViewModel
  
  //MARK: - State properties
  
  /// True when the CPV list view is visible
  @State private var showingCpv = false
  
  /// True when the settings view is visible
  @State private var showingSettings = false
  
  /// True when the list view is visible
  @State private var showingList = false
  
  /// Return to open screen for fresh search
  @State private var returnButtonPressed = false
  
  /// True if the user has selected a release from the list for display
  @State private var showingRelease = false
  
  /// True when user is searching
  @Environment(\.isSearching) var isSearching
  
  /// Search text
  @StateObject private var searchText = Debouncer(initialValue: "", delay: 1.0)
  

  //MARK: - Init
  
  /// Set the navigation bar appearance - this is shown when the user scrolls upwards
  init(cfViewModel : CFViewModel) {

    self.cfViewModel = cfViewModel
    
    UINavigationBar.appearance().barTintColor = UIColor.systemBlue
  }
  
  var body: some View {
    ZStack {
      Constants.backgroundColour.ignoresSafeArea()
      
      VStack() {
        if cfViewModel.cfModel.modelStatus == .unloaded {
          headerText
          
        } else if returnButtonPressed {
          headerText
          
        } else {
          releaseList
        }
        
        if cfViewModel.cfModel.modelStatus == .loading {
          Spacer()
          ProgressView("Downloading").foregroundColor(Constants.textColor).font(.title3)
        }
        
        if showingRelease == false {
          Spacer()
          userOptions
        }
      }
      .padding()
    } // ZStack
    
    /// Presentations
    .sheet(isPresented: $showingSettings) {
      SettingsView(cfViewModel: cfViewModel)
    }
    
    .sheet(isPresented: $showingCpv) {
      CPVListView(cfViewModel: cfViewModel)
    }
    
    /// Searching
    .searchable(text: $searchText.input,
                placement: .navigationBarDrawer(displayMode: .always))
    
    .onChange(of: searchText.output) {searchText in
      cfViewModel.search(searchText)
    } // .onChange
  } // body
  
  //MARK: - Private vars
  
  private var releaseList: some View {
    
    VStack {
      
      Text("Releases")
        .font(.title2)
        .foregroundColor(Constants.textColor)
      
      NavigationView() {
        if #available(iOS 16.0, *) {
          List() {
            ForEach(cfViewModel.cfModel.cfSearch.releases ?? []) { release in
              
              //TODO: Resolve this warning - "'init(destination:isActive:label:)' was deprecated in iOS 16.0: use NavigationLink(value:label:) inside a NavigationStack or NavigationSplitView"
              
              NavigationLink(destination: CFReleaseView(release: release),
                             isActive: $showingRelease)
              {
                Text(release.tender.title)
                  .foregroundColor(.white)
              } // NavigationLink
              .listRowBackground(Constants.backgroundColour)
              
            } // ForEach
          } // List
          .background(Constants.backgroundColour)
          .scrollContentBackground(.hidden)
        } else {
          List() {
            ForEach(cfViewModel.cfModel.cfSearch.releases ?? []) { release in
              
              NavigationLink(destination: CFReleaseView(release: release),
                             isActive: $showingRelease)
              {
                Text(release.tender.title)
                  .foregroundColor(.white)
              } // NavigationLink
              .listRowBackground(Constants.backgroundColour)
              
            } // ForEach
          } // List
          .background(Constants.backgroundColour)
        } // if #available(iOS 16.0, *)
      } // NavigationView
    } // VStack
    .background(Constants.backgroundColour)
    
  } // releaseList
  
  
  private var headerText: some View {
    VStack(spacing: 20) {
      Text("Contract Finder")
        .font(.title)
        .foregroundColor(Constants.textColor)
      
      Text(Constants.searchMessage)
        .foregroundColor(Constants.textColor)
        .font(.title2)
    }
    .multilineTextAlignment(.center)
    .padding()
  } // headerText
  
  private var userOptions: some View {
    HStack {
      if showingList {
        showReturnButton
        Spacer()
        showSortButton
      } else {
        
        showSearchButton
        Spacer()
        showSettingsButton
      }
    }
    .padding()
  } // gameIsRunningHStack
  
  private var showCpvButton: some View {
    Button { showingCpv = true }
  label: {
    Image(systemName: "chart.bar.doc.horizontal")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.largeTitle)
  } // showCpvButton
  
  private var showReturnButton: some View {
    Button {
      returnButtonPressed = true
      showingList = false
    }
  label: {
    Image(systemName: "return")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title)
  } // showReturnButton
  
  
  private var showSearchButton: some View {
    Button {
      if showingList == false {
        showingList = true
        returnButtonPressed = false
        cfViewModel.search()
      }
    }
    
  label: {
    Image(systemName: "magnifyingglass")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title)
  } // showSearchButton
  
  private var showSortButton: some View {
    Button {
      if showingList == true {
        cfViewModel.sort()
      }
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
  
  
  private var showSettingsButton: some View {
    Button { showingSettings = true }
  label: {
    Image(systemName: "gear")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title)
  } // showSettingsButton
  
} // ContentView


struct ContentView_Previews: PreviewProvider {
  static let cfViewModel = CFViewModel()
  
  static var previews: some View {
    cfViewModel.search()
    return ContentView(cfViewModel: cfViewModel)
  }
}
