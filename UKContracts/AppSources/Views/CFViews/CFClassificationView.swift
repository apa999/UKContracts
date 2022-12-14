//
//  CFClassificationView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import SwiftUI

struct CFClassificationView: View {
  var classification : Classification
    var body: some View {
      VStack(spacing: 10) {
        if let scheme = classification.scheme, let description = classification.classificationDescription, let id = classification.id {
          
          VStack(alignment: .center, spacing: 10) {
            Constants.divider
            Text("Classification")
              .font(.title3)
          } // VStack
          
          VStack(alignment: .leading, spacing: 10) {
            Text("Scheme : \(scheme)")
            Text("Id : \(id)")
            Text("Description : \(description)")
          } // VStack
        } // if let ...
      } // VStack
    } // body
} // struct ClassifacationView

struct ClassifacationView_Previews: PreviewProvider {
  
  
    static let classification1 =
  Classification(scheme: "CPV", id: "48000000",
                 classificationDescription: "Software package and information systems")
  
    static var previews: some View {
      CFClassificationView(classification: classification1)
    }
}
