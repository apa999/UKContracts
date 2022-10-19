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
  
  var body: some View {
    ZStack {
      Color.blue
        .ignoresSafeArea()

      VStack(spacing: 20) {
        Text("Contract Finder")
          .font(.title)
          .foregroundColor(Constants.textColor)
        
        Text(Constants.searchMessage)
          .foregroundColor(Constants.textColor)
          .font(.title2)
       
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
  
  
 
   
  private var userOptions: some View {
    HStack {
      showCpvButton
      Spacer()
      showSearchButton
      Spacer()
      showSettingsButton
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
      cfViewModel.search()
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
