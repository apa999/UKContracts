//
//  CFDetailView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import SwiftUI

struct CFDetailView: View {
  
  var release: Release
  
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    
    ZStack(alignment: .top) {
      Constants.backgroundColour
        .ignoresSafeArea()
      
      VStack {
        Text("Contract details")
          .font(.title2)
          .multilineTextAlignment(.center)
          .padding(.bottom)
        
        VStack(alignment: .leading, spacing: 10) {
          Text("Date : \(release.formattedDate)")
          Text("Initiation type : \(release.initiationType ?? "?")")
          
          ForEach(release.parties ?? [] ) { party in
            Text("Party name: \(party.name   ?? "No party name")")
          }
          
          Text("Buyer: \(release.buyer?.name   ?? "No buyer")")
          
          ForEach(release.awards ?? [] ) { award in
            Text("Award name: \(award.awardDescription   ?? "No award name")")
          }
        } // VStack 2
      } // VStack 1
      
      
      .padding(10)
      .foregroundColor(Constants.textColor)
    } // ZStack
    .onTapGesture {
      presentationMode.wrappedValue.dismiss()
    }
  } // body
} // CFDetailView

struct CFDetailView_Previews: PreviewProvider {
  
  static let cfSearch = CFSearch.getTestCFSearch()
  static var previews: some View {
    CFDetailView(release: cfSearch.releases!.first!)
  }
}
