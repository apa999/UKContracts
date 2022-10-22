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
  
  
  var body: some View {
    ZStack {
      Constants.backgroundColour.ignoresSafeArea()
      
      VStack() {
        if cfViewModel.cfModel.modelStatus == .unloaded {
          headerText
        } else {
          releaseList
        }
      
        if cfViewModel.cfModel.modelStatus == .loading {
          Spacer()
          ProgressView("Downloading").foregroundColor(Constants.textColor).font(.title3)
        }
      
        Spacer()
        userOptions
      }
      .padding()
    } // ZStack
    
    .sheet(isPresented: $showingSettings) {
      SettingsView(cfViewModel: cfViewModel)
    }
    
    .sheet(isPresented: $showingCpv) {
      CPVListView(cfViewModel: cfViewModel)
    }
  } // body
  
  //MARK: - Private vars
  
  private var releaseList: some View {
    
    VStack {
      
   Text("Releases")
        .font(.title2)
        .foregroundColor(Constants.textColor)
      
    NavigationView() {
      List() {
        ForEach(cfViewModel.cfModel.cfSearch.releases ?? []) { release in
          
          NavigationLink(destination: CFReleaseView(release: release))
          {
            Text(release.tender?.title ?? "Missing tender")
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
        showSearchButton
      } else {
//        showCpvButton
//        Spacer()
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
  
  private var showSearchButton: some View {
    Button {
      if showingList == false {
        cfViewModel.search()
      }
      showingList.toggle()
    }
  label: {
    Image(systemName: "magnifyingglass")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.largeTitle)
  } // showSearchButton
  
  private var showSettingsButton: some View {
    Button { showingSettings = true }
  label: {
    Image(systemName: "gear")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.largeTitle)
  } // showSettingsButton
  
} // ContentView

struct ContentView_Previews: PreviewProvider {
  static let cfViewModel = CFViewModel()
  
  static var previews: some View {
    cfViewModel.search()
    return ContentView(cfViewModel: cfViewModel)
  }
}
