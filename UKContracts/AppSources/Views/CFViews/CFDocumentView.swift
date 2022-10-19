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
    ScrollView {
      ZStack {
        Constants.backgroundColour
          .ignoresSafeArea()
        
        VStack {
          Text("Documents")
            .font(.title2)
          Spacer()
          VStack(alignment: .leading, spacing: 10) {
            ForEach(documents) { document in
              documentDetails(document: document)
              Divider()
            } // ForEach
          } // VStack
          .padding(10)
        }
      } // Zstack
      .foregroundColor(Constants.textColor)
    } // ScrollView
  }
  
  private func documentDetails(document: Document) -> some View {
    VStack(alignment: .center, spacing: 10) {
      Text("id : \(document.id ?? "" )")
        .font(.title2)
      
      VStack(alignment: .leading, spacing: 10) {
         if let documentType =  document.documentType {
           Text("documentType : \(documentType)")
         }

         if let documentDescription =  document.documentDescription {
           Text("documentDescription : \(documentDescription)")
         }

         if let url =  document.url {
           Text("url : \(url)")
         }

         if let datePublished =  document.formattedDatePublished {
           Text("datePublished : \(datePublished )")
         }

         if let format =  document.format {
           Text("format : \(format)")
         }

         if let language =  document.language {
           Text("language : \(language)")
         }

         if let dateModified =  document.formattedDateModified {
           Text("dateModified : \(dateModified)")
         }


    } // VStack 2
    } // VStack 1
  } // documentDetails
} // DocumentView

struct DocumentView_Previews: PreviewProvider {
  
  static var previews: some View {
    CFDocumentView(documents: [CFSearch.DocumentTest1, CFSearch.DocumentTest2,CFSearch.DocumentTest3
                            ])
  }
}
