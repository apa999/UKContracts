//
//  CFDetailView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import SwiftUI

struct CFDetailView: View {
  var release: Release
  
  var body: some View {
  
    VStack {
      Text("Date : \(release.formattedDate)")
      Text("Initiation type : \(release.initiationType ?? "?")")
      
      ForEach(release.parties ?? [] ) { party in
        Text("Party name: \(party.name   ?? "No party name")")
      }
      
      Text("Buyer: \(release.buyer?.name   ?? "No buyer")")
      
      ForEach(release.awards ?? [] ) { award in
        Text("Award name: \(award.awardDescription   ?? "No award name")")
      }
    } // VStack
  } // body
}

struct CFDetailView_Previews: PreviewProvider {
  
  static let cfSearch = CFSearch.getTestCFSearch()
    static var previews: some View {
        CFDetailView(release: cfSearch.releases!.first!)
    }
}
