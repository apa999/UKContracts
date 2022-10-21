//
//  CFPartyView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

// MARK: - Party
/*
 struct Party : Codable, Identifiable {
 let id           : String?
 let name         : String?
 let identifier   : Identifier?
 let address      : Address?
 let contactPoint : ContactPoint?
 let details      : Details?
 let roles        : [String]
 }
 */

import MessageUI
import SwiftUI

struct CFPartyView: View {
  
  var parties: [Party]
  
  /// Support for email
  @State var result: Result<MFMailComposeResult, Error>? = nil
  @State var isShowingMailView = false
  @State var recipients = "apa999@me.com"
  @State var subject = "Contract Finder Enquiry"
  
  
  var body: some View {
    
    ZStack {
      Constants.backgroundColour
        .ignoresSafeArea()
      ScrollView {
        VStack(spacing: 10) {
          Text("Parties")
            .font(.title)
          
          VStack(alignment: .leading, spacing: 10) {
            ForEach(parties) { party in
              showPartyDetails(party)
              Constants.divider
            } // ForEach(parties)
          } // VStack
        } // VStack
      } // ScrollView
      .padding(.horizontal)
    } // Zstack
    .foregroundColor(Constants.textColor)
    
    .sheet(isPresented: $isShowingMailView) {
      
                MailView(isShowing: self.$isShowingMailView,
                         result: self.$result,
                         recipients: $recipients,
                         subject: $subject)
            }
    
  } // body
  
  private func showPartyDetails(_ party: Party) -> some View {
    return VStack(alignment: .leading, spacing: 10) {
      if let name = party.name {
        Text("\(name)").font(.title2)
      }
      
      if let id = party.id {
        Text("Id: \(id)")
        Constants.dashedLine
      }
      
      if let address = party.address {
        showAddress(address)
        Constants.dashedLine
      }
      
      if let contactPoint = party.contactPoint {
        showContactPoint(contactPoint)
        Constants.dashedLine
      }
      
      if let details = party.details {
        showDetails(details, party: party)
      }
      
      if let identifier = party.identifier {
        showIdentifier(identifier)
      }
      
      if let roles = party.roles {
        showRoles(roles)
      }
    } // VStack
  }
  
  private func showAddress(_ address: Address) -> some View {
    return VStack(alignment: .leading, spacing: 5) {
      if let streetAddress = address.streetAddress {
        Text("Street: \(streetAddress)")
      }
      if let locality = address.locality {
        Text("Locality: \(locality)")
      }
      if let countryName = address.countryName {
        Text("Country: \(countryName)")
      }
      if let postalCode = address.postalCode {
        Text("Postcode: \(postalCode)")
      }
    }
  } // private func showAddress
  
  private func showContactPoint(_ contactPoint: ContactPoint) -> some View {
    VStack(alignment: .leading, spacing: 5) {
      
      if let name = contactPoint.name {
        Text("Name: \(name)")
      }
      if let email = contactPoint.email {
        
        Button {
       
          self.isShowingMailView.toggle()
        }
      label: {
        HStack(spacing: 10){
          Text("Email: ")
          Image(systemName: "square.and.pencil")
        }
      }
        Text("Email: \(email)")
      }
      if let telephone = contactPoint.telephone {
        Text("Telephone: \(telephone)")
      }
    }
  } // private func showContactPoint
  
  private func showDetails(_ details: Details, party: Party) -> some View {
    VStack(alignment: .leading, spacing: 5) {
      if let urlString = party.details?.url {
        /// Displays the website for the party
        Button {
          showWebsiteFor(urlString: urlString)
        }
      label: {
        HStack(spacing: 10){
          Text("Website")
          Image(systemName: "network")
        }
      }
      }
      if let vcse = details.vcse {
        Text("VCSE: \(vcse ? "Yes" : "No" )")
      }
    }
  } // private func showDetails
  
  
  private func showWebsiteFor(urlString: String) {
    if let url = URL(string: urlString.replacingOccurrences(of: "http://www.", with: "https://www.")) {
      
      UIApplication.shared.open(url, options: [:])
    }
  }
  
  private func showIdentifier(_ identifier: Identifier) -> some View {
    VStack(alignment: .leading, spacing: 5) {
      if let id = identifier.id {
        Text("Id: \(id)")
      }
      
      if let scheme = identifier.scheme {
        Text("Scheme: \(scheme)")
      }
      
      if let legalName = identifier.legalName {
        Text("Legal name: \(legalName)")
      }
    } // VStack
  } // private func showIdentifier
  
  private func showRoles(_ roles: [String]) -> some View {
    VStack(alignment: .leading, spacing: 5) {
      ForEach(roles, id: \.self ) {role in
        Text("Role: \(role)")
      }
    } // VStack
  } // private func showRoles
  
  
 
} // CFPartyView

struct CFPartyView_Previews: PreviewProvider {
  
  /// Known status: active, complete, planned, planning
  static let parties = CFSearch.getParties(3)
  
  static var previews: some View {
    CFPartyView(parties: parties ?? [])
  }
}
