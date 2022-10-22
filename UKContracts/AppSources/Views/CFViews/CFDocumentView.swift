//
//  CFDocView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

/*
 struct Document : Codable {
 let id                  : String?
 let documentType        : String?
 let documentDescription : String?
 let url                 : String?
 let datePublished       : Date?
 let format              : String?
 let language            : String?
 let dateModified        : Date?
 }
 */

import SwiftUI

struct CFDocumentView: View {
  
  var documents: [Document]
  
  var body: some View {
    
    ZStack {
      Constants.backgroundColour
        .ignoresSafeArea()
      ScrollView {
        VStack {
          Text("Documents")
            .font(.title2)
          Spacer()
          VStack(alignment: .leading, spacing: 10) {
            ForEach(documents) { document in
              documentDetails(document: document)
              Constants.divider
            } // ForEach
          } // VStack
          .padding(10)
        }
      } // Zstack
      .foregroundColor(Constants.textColor)
    } // ScrollView
  }
  
  private func documentDetails(document: Document) -> some View {
    VStack(alignment: .leading, spacing: 10) {
      if let documentType =  document.formattedDocumentType {
        Text("Type : \(documentType)")
      }
      
      if let documentDescription =  document.documentDescription {
        Text("\(documentDescription)")
      }
      
      if let datePublished =  document.formattedDatePublished {
        if datePublished.isEmpty == false {
          Text("Date published : \(datePublished )")
        }
      }
      
      if let dateModified =  document.formattedDateModified {
        if dateModified.isEmpty == false {
          Text("Date modified : \(dateModified)")
        }
      }
      
      if let format =  document.format {
        Text("Format : \(format)")
      }
      
      if let language =  document.language {
        if language != "en" {
          Text("Language : \(language)")
        }
      }
          
      if let urlString = document.url {
        Button {
          showWbsiteFor(urlString: urlString)
        }
      label: {
        HStack(spacing: 10){
          Image(systemName: "network")
          Text("Website")
        }
        
      } // label
      } // if let urlString =
    } // VStack 2
    .font(.title3)
    
  } // documentDetails
  
  /// Displays the website for the CPV
  private func showWbsiteFor(urlString: String) {
    if let url = URL(string: urlString ) {
      UIApplication.shared.open(url, options: [:])
    }
  } // private func showWbsiteFor
  
  
} // DocumentView

struct DocumentView_Previews: PreviewProvider {
  
  static var previews: some View {
    CFDocumentView(documents: [CFSearch.DocumentTest1, CFSearch.DocumentTest2,CFSearch.DocumentTest3
                              ])
  }
}
