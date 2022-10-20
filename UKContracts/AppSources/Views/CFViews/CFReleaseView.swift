//
//  CFReleaseView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import SwiftUI

struct CFReleaseView: View {
  
  var release: Release
  
  @Environment(\.presentationMode) var presentationMode
  
  /// True when the tender details view is visible
  @State private var showingTender = false
  
  
  var body: some View {
    
    ZStack(alignment: .top) {
      Constants.backgroundColour
        .ignoresSafeArea()
      VStack(spacing: 10) {
        Text("Contract Details")
          .font(.title2)
        
        VStack {
          mainText
          
          Spacer()
          
          HStack {
            tenderButton
          }
          .padding()
        } // VStack 2
      } // VStack 1
      .padding(10)
      .foregroundColor(Constants.textColor)
    } // ZStack
    .onTapGesture {
      presentationMode.wrappedValue.dismiss()
    }
    
    .sheet(isPresented: $showingTender) {
      if let tender = release.tender {
        CFTenderView(tender: tender)
      }
    }
    
    
  } // body
  
  //MARK: - Private vars
  
  private var mainText: some View {
    VStack(alignment: .leading, spacing: 20) {
      
      Text("Date : \(release.formattedDate)")
      
      if let initiationType = release.initiationType {
        Text("Type : \(initiationType.capitalizingFirstLetter())")
      }
      
      if let parties = release.parties  {
        ForEach(parties) { party in
          Text("Party: \(party.name   ?? "No party name")")
        }
      }
      
      
      Text("Buyer: \(release.buyer?.name   ?? "No buyer")")
      
      ForEach(release.awards ?? [] ) { award in
        Text("Award: \(award.awardDescription   ?? "No award name")")
      }
    } // VStack
    .font(.title3)
  } // mainText
  
  private var tenderButton: some View {
    Button { showingTender = true }
  label: {
    Text("Tender")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title3)
  } // tenderButton
  
} // CFDetailView

struct CFDetailView_Previews: PreviewProvider {
  
  static let cfSearch = CFSearch.getTestCFSearch()
  static var previews: some View {
    CFReleaseView(release: cfSearch.releases!.first!)
  }
}

