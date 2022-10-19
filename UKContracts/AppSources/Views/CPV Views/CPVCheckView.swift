//
//  CPVCheckView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import SwiftUI

struct CPVCheckView: View {
  
  /// Observed object - ViewModel
  @ObservedObject var cfViewModel: CFViewModel
  
  /// Properties
  var cpv : CPV
  
  func toggle(){
    cfViewModel.toggleIsSelected(for: cpv)
  } // func toggle()
  
  var body: some View {
    HStack(spacing: 20){
      Text(cpv.codeLabel)
        .foregroundColor(Constants.settingsTextColor)
      
      Spacer()
    
      // Toggles isSelected
      Button(action: toggle) {
        Image(systemName: cpv.isSelected ? "checkmark.square" : "square")
      } // Button

      /// Displays the website for the CPV
      Button(action: showWbsiteFor) {
        Image(systemName: "network")
      } // Button
      
    } // HStack
    
  } // body
  
  /// Displays the website for the CPV
  private func showWbsiteFor() {
    if let url = URL(string: "\(Constants.cpvCodeURL)\(cpv.code).html") {
      UIApplication.shared.open(url, options: [:])
    }
  }
  
} // struct CPVCheckView

//#if DEBUG
//struct CheckView_Previews: PreviewProvider {
//  static let cfViewModel = CFViewModel()
//  static var previews: some View {
//    CPVCheckView(cfViewModel: cfViewModel, cpv: cfViewModel.cfModel.cpvModel.cpvs[0])
//  }
//}
//#endif

