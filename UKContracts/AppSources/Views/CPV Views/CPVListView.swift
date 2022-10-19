//
//  CPVListView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import SwiftUI

struct CPVListView: View {
  
  /// Observed object - ViewModel
  @ObservedObject var cfViewModel: CFViewModel
  
  // Environment
  @Environment(\.presentationMode) var presentationMode
  
  /// State Object used to debounce the search text
  @StateObject private var searchText = Debouncer(initialValue: "", delay: 1.0)
  
  /// Select/Deselect all
  @State private var selectAll = false
  
  //MARK: - Used to set title attributes
  init(cfViewModel: CFViewModel) {
    
    self.cfViewModel = cfViewModel
    
#if !os(macOS)
    // NavigationBarTitle is with Large Font
    UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Constants.settingsTextColor) ]
    
    // NavigationBarTitle is with displayMode = .inline
    UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Constants.settingsTextColor)  ]
#endif
  }
  
  var body: some View {
    NavigationView{
      HierarchyList(data: cfViewModel.cpvModel.cpvs, children: \.children, rowContent: {
        CPVCheckView(cfViewModel: cfViewModel, cpv: $0) })
      .onTapGesture(count: 2) {
        presentationMode.wrappedValue.dismiss()
      }
      
      /// Searchable - wait for user to finish typing
      .searchable(text: $searchText.input,
                  placement: .navigationBarDrawer(displayMode: .always),
                  prompt: cfViewModel.settings.cpvFilteredString.isEmpty ?
                  "Search CPV's" : "\(cfViewModel.settings.cpvFilteredString)")
      
      ///User has entered a CPV search string
      .onChange(of: searchText.output) {searchText in
        cfViewModel.filterCPVs(by: searchText)
      } // .onChange
      
      .toolbar{
        ToolbarItem(placement: .navigationBarTrailing){
          Button("Done") {
            presentationMode.wrappedValue.dismiss()
          } // button
        } // toolBarItem
        
        ToolbarItem(placement: .navigationBarLeading){
          Button(action: toggleSelectAll) {
              HStack {
                Image(systemName: selectAll ? "checkmark.square" : "square")
                Text(selectAll ? "Deselect all" : "Select all")
              }
          }
          .padding()
        } // toolBarItem
      } // toolBar
      
      .navigationTitle(cfViewModel.settings.cpvFilteredString.isEmpty ?
                       "CPV Selection" : "CPV Selection - \(cfViewModel.settings.cpvFilteredString)")
     
      .navigationViewStyle(StackNavigationViewStyle())

#if !os(macOS)
        .navigationBarTitleDisplayMode(.inline)
#else
        .frame(width: 600, height: 400)
#endif
    } // NavigationView
  } // body
  
  
  /// Selects or deselects all the CPV's
  private func toggleSelectAll() {
    selectAll.toggle()
    
    if selectAll  {
      cfViewModel.selectAll()
    } else {
      cfViewModel.deselectAll()
    }
  } // toggleSelectAll()
  
} // CPVListView

struct CPVListView_Previews: PreviewProvider {
  static let cfViewModel = CFViewModel()
  static var previews: some View {
    CPVListView(cfViewModel: cfViewModel)
  }
}

