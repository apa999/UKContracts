//
//  CFAwardsView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

// MARK: - Award
/*
 struct Award : Codable, Identifiable {
   let id               : String?
   let status           : String?
   let date             : Date?
   let datePublished    : Date?
   let value            : MinValue?
   let suppliers        : [Buyer]?
   let contractPeriod   : Period?
   let documents        : [Document]?
   let awardDescription : String?
 }
 */

import SwiftUI

struct CFAwardsView: View {
  
  var awards: [Award]
  
  var body: some View {
    ZStack {
      Constants.backgroundColour
        .ignoresSafeArea()
      ScrollView {
        VStack(spacing: 10) {
          Text("Awards")
            .font(.title)
          
          VStack(alignment: .leading, spacing: 10) {
            ForEach(awards) { award in
              showAwardDetails(award)
              Constants.divider
            } // ForEach(parties)
          } // VStack
        } // VStack
      } // ScrollView
      .padding(.horizontal)
    } // Zstack
    .foregroundColor(Constants.textColor)
  }
  
  private func showAwardDetails(_ award: Award) -> some View {
    return VStack(alignment: .leading, spacing: 10) {
    
      if let id = award.id {
        Text("Id: \(id)")
      }
      
      if let status = award.status {
        Text("Status: \(status)").font(.title2)
      }
      
    } // VStack
  } // showAwardDetails
}

struct CFAwardsView_Previews: PreviewProvider {
  
  /// Known status: active, complete, planned, planning
  static let awards = CFSearch.getAwards(1)
  
  static var previews: some View {
    CFAwardsView(awards: awards ?? [])
  }
}
