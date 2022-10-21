//
//  CFContacts.swift
//  UKContracts
//
//  Created by Anthony Abbott on 21/10/2022.
//

import Contacts
import SwiftUI

struct CFContacts {
  
  static func add(_ party: Party) {
    // Create a mutable object to add to the contact.
    let contact = CNMutableContact()

    // Store the profile picture as data.
    let image = UIImage(systemName: "person.crop.circle")
    contact.imageData = image?.jpegData(compressionQuality: 0.5)

    if let name = party.name {
      contact.familyName  = name
    }
 
    if let address = party.address {
      let homeAddress = CNMutablePostalAddress()
      
      if let street = address.streetAddress {
        homeAddress.street = street
      }
      
      if let locality = address.locality {
        homeAddress.subLocality = locality
      }
      
      if let countryName = address.countryName {
        homeAddress.country = countryName
      }
      
      if let postalCode = address.postalCode {
        homeAddress.postalCode = postalCode
      }
      
      contact.postalAddresses = [CNLabeledValue(label: CNLabelHome, value: homeAddress)]
    }
    
    if let contactPoint = party.contactPoint {
      if let telephone = contactPoint.telephone {
        contact.phoneNumbers = [CNLabeledValue(
            label: CNLabelPhoneNumberiPhone,
            value: CNPhoneNumber(stringValue: telephone))]
      }
      
      if contactPoint.email.count > 0 {
        let homeEmail = CNLabeledValue(label: CNLabelHome, value: contactPoint.email as NSString)
        let workEmail = CNLabeledValue(label: CNLabelWork, value: contactPoint.email as NSString)
        contact.emailAddresses = [homeEmail, workEmail]
      }
    }
  
    // Save the newly created contact.
    let store = CNContactStore()
    let saveRequest = CNSaveRequest()
    saveRequest.add(contact, toContainerWithIdentifier: nil)

    do {
        try store.execute(saveRequest)
    } catch {
        print("Saving contact failed, error: \(error)")
        // Handle the error.
    }
  }
}
