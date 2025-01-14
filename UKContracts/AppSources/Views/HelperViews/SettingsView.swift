//
//  SettingsView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import Foundation

import Combine
import SwiftUI

struct SettingsView: View {
  
  // Environment
  @Environment(\.presentationMode) var presentationMode
  
  /// Observed object - ViewModel
  @ObservedObject var cfViewModel: CFViewModel
  
  //MARK: - State properties
  
  
  
  //MARK: - Used to set title attributes
  init(cfViewModel: CFViewModel) {
    
    self.cfViewModel = cfViewModel
    
    // NavigationBarTitle is with Large Font
    UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Constants.settingsTextColor) ]
    
    // NavigationBarTitle is with displayMode = .inline
    UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Constants.settingsTextColor)  ]
  }
  
  var body: some View {
    NavigationView {
      ZStack {
        Constants.backgroundColour.ignoresSafeArea()
        
        Form{
          
          Section(header: Text("Contract status")) {
            Toggle(isOn: cfViewModel.settings.$award  ) {
              Text("Awarded")
            } // Toggle
            
            Toggle(isOn: cfViewModel.settings.$implmentation  ) {
              Text("Implmentation")
            } // Toggle
            
            Toggle(isOn: cfViewModel.settings.$planning  ) {
              Text("Planning")
            } // Toggle
            
            Toggle(isOn: cfViewModel.settings.$tender  ) {
              Text("Tender")
            } // Toggle
          } // Section
          .font(.title3)
          .foregroundColor(Constants.settingsTextColor)
          
          Section(header: Text("Contract type")) {
            Toggle(isOn: cfViewModel.settings.$sme  ) {
              Text("Small and Medium Enterprises (SME)")
            } // Toggle
            
            Toggle(isOn: cfViewModel.settings.$vco  ) {
              Text("Voluntary and Community Organisations (VCO)")
            } // Toggle
          } // Section
          .font(.title3)
          .foregroundColor(Constants.settingsTextColor)
          
          /// From and To date pickers
          Section(header: Text("Contract dates")) {
            fromDatePicker
            toDatePicker
          } // Section
          
          .font(.title3)
          .foregroundColor(Constants.settingsTextColor)
          
          /// From and To date pickers
          Section(header: Text("Filter by")) {
            filterBy
          } // Section
          
          .font(.title3)
          .foregroundColor(Constants.settingsTextColor)
          
          /// Maximum contracts to return
          Section(header: Text("Maximum contracts")) {
            maximumContracts
          } // Section
          
          .font(.title3)
          .foregroundColor(Constants.settingsTextColor)
          
        } // Form
        
        .toolbar{
          ToolbarItem{
            Button("Done") {
              presentationMode.wrappedValue.dismiss()
            }
          }
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.inline)
      }
    } // NavigationView
    .onTapGesture(count: 2) {
      presentationMode.wrappedValue.dismiss()
    }
  } // body
  
  
  private var fromDatePicker: some View {
    DatePicker("Published from date",
               selection:
                withAnimation { cfViewModel.settings.$publishedFromDate})
    .foregroundColor(Constants.settingsTextColor)
  } // var fromDatePicker
  
  private var toDatePicker: some View {
    DatePicker("Published to date",
               selection: withAnimation { cfViewModel.settings.$publishedToDate } )
    .foregroundColor(Constants.settingsTextColor)
  } // var toDatePicker
  
  private var filterBy: some View {
    TextField("Filter by", text: cfViewModel.settings.$filterByText)
    .foregroundColor(Constants.settingsTextColor)
  } // var filterBy
  
  
  private var maximumContracts: some View {
    TextField("\(cfViewModel.settings.searchReleaseMax)", text: $cfViewModel.settings.searchReleaseMaxStr)
    .foregroundColor(Constants.settingsTextColor)
  } // var filterBy
  
  
} // SettingsView


struct Settings_Previews: PreviewProvider {
  static let cfViewModel = CFViewModel()
  
  static var previews: some View {
    SettingsView(cfViewModel: cfViewModel)
      .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
  }
}
