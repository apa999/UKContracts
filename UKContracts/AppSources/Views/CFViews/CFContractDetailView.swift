//
//  CFContractDetailView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

// MARK: - Release
/*
 struct Release : Codable, Identifiable {
   let ocid           : String?
   let id             : String?
   let language       : String?
   let date           : Date?
   let tag            : [String]?
   let initiationType : String?
   let tender         : Tender?
   let parties        : [Party]?
   let buyer          : Buyer?
   let awards         : [Award]?
   let planning       : Planning?
 }
 */

import SwiftUI

struct CFContractDetailView: View {
  
  var release: Release
  
  @Binding var isShowingContractDetail: Bool
  
  /// True when the tender details view is visible
  @State private var showingTender = false
  
  /// True when the parties details view is visible
  @State private var showingParties = false
  
  /// True when the awards details view is visible
  @State private var showingAwards = false
  
 
  var body: some View {
    
    ZStack(alignment: .top) {
      Constants.backgroundColour
        .ignoresSafeArea()
  
      VStack(alignment: .center, spacing: 15) {
        
        Text("Contract Details")
          .font(.title)
          .padding(.top)
        
//        if let tenderTitle = release.tender.title {
//          Text("\(tenderTitle)").font(.title2)
//        }
        
        Text("\(release.tender.title)").font(.title2)
        
        VStack(alignment: .leading, spacing: 10) {
       
          mainText
          
          Spacer()
          
          controlButtons
          
        } // VStack 2
      } // VStack 1
      .padding()
      .foregroundColor(Constants.textColor)
    } // ZStack
    
    /// Use the isShowingContractDetail binding to hide the List's buttons
    .onAppear{
      isShowingContractDetail = true
    }
    
    .onDisappear{
      isShowingContractDetail = false
    }
    
    .sheet(isPresented: $showingTender) {
//      if let tender = release.tender {
//        CFTenderView(tender: tender)
//      }
      CFTenderView(tender: release.tender)
    }
    
    .sheet(isPresented: $showingParties) {
      if let parties = release.parties {
        CFPartyView(parties: parties)
      }
    }
    
    .sheet(isPresented: $showingAwards) {
      if let awards = release.awards {
        CFAwardsView(awards: awards)
      }
    }
  } // body
  
  //MARK: - Private vars
  
  private var mainText: some View {
    VStack(alignment: .leading, spacing: 15) {
      
      Text("Date : \(release.formattedDate)")
      
      if let initiationType = release.initiationType {
        Text("Type : \(initiationType.capitalizingFirstLetter())")
      }
   
      Text("Buyer: \(release.buyer?.name   ?? "No buyer")")
      
      if let _ = release.id {
        /// Displays the website for the CPV
        Button(action: showWebsiteFor) {
          HStack {
            Image(systemName: "network")
            Text("Contract details")
          }.font(.title2)
        } // Button
      }
      
      
    } // VStack
    .font(.title3)
  } // mainText
  
  //MARK: - Private functions
  
  /*
   Displays the website for the CPV
   
   Example: Releasse.id = 90983041-1638-4704-9bcf-61bbae6515a2-582687
   
   From website
   https://www.contractsfinder.service.gov.uk/notice/90983041-1638-4704-9bcf-61bbae6515a2
   */
  private func showWebsiteFor() {

    
    if let id = release.id {
      var splits = id.split(separator: "-")
      splits.removeLast()
      let newId = splits.joined(separator: "-")
      
      if let url = URL(string: "\(Constants.ocidBaseUrl)\(newId)?") {
        UIApplication.shared.open(url, options: [:])
      }
    }
  }
  
  //MARK: - Buttons
  private var controlButtons: some View {
    HStack {
      Spacer()
      
      if let _ = release.awards {
        awardsButton
        Spacer()
      }
      
      if let _ = release.parties {
        partiesButton
        Spacer()
      }
      
//      if let _ = release.tender {
//        tenderButton
//        Spacer()
//      }
      
      tenderButton
      Spacer()
    }
    .padding(.horizontal)
  } // rivate var controlButtons
  
  private var awardsButton: some View {
    Button { showingAwards = true }
  label: {
    Text("Awards")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title2)
  } // awardsButton
  
  private var partiesButton: some View {
    Button { showingParties = true }
  label: {
    Text("Parties")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title2)
  } // partiesButton
  
  private var tenderButton: some View {
    Button { showingTender = true }
  label: {
    Text("Tender")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title2)
  } // tenderButton
  
} // CFDetailView

//struct CFDetailView_Previews: PreviewProvider {
//
//  static let cfViewModel = CFViewModel()
//
//
//  static var previews: some View {
//
//
//    return CFContractDetailView(release: (cfViewModel.cfModel.cfSearch.releases?.first)!, isShowingContractDetail: Binding.constant(false))
//  }
//}
