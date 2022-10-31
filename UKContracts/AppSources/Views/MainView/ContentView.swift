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
  
  /// True if the user has selected a release from the list for display
  @State private var showingRelease = false
  
 
  
  //MARK: - Init
  
 
  
  var body: some View {
    ZStack {
      Constants.backgroundColour.ignoresSafeArea()
      
      VStack() {
        headerText
        Spacer()
        userOptions
      }
      .padding()
    } // ZStack
    
    /// Release list
    .sheet(isPresented: $showingRelease) {
      CFContractListView(cfViewModel: cfViewModel)
    }
    
    /// Settings
    .sheet(isPresented: $showingSettings) {
      SettingsView(cfViewModel: cfViewModel)
    }
  } // body
  
  //MARK: - Private vars
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
      showSearchButton
      Spacer()
      showSettingsButton
    }
    .padding()
  } // userOptions
  
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
      cfViewModel.search()
      showingRelease = true
    }
    
  label: {
    Image(systemName: "magnifyingglass")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title)
  } // showSearchButton
  
  
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
