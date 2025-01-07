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
  
  func documentDetails(document: Document) -> some View {
    VStack(alignment: .leading, spacing: 10) {
      if let documentType =  document.formattedDocumentType {
        Text("Type : \(documentType)")
      }
      
      if let documentDescription =  document.documentDescription {
        Text("\(documentDescription)")
      }
      
//      if let datePublished =  document.formattedDatePublished {
//        if datePublished.isEmpty == false {
//          Text("Date published : \(datePublished )")
//        }
//      }
      
    
        if document.formattedDatePublished.isEmpty == false {
          Text("Date published : \(document.formattedDatePublished )")
        }
      
      
//      if let dateModified =  document.formattedDateModified {
//        if dateModified.isEmpty == false {
//          Text("Date modified : \(dateModified)")
//        }
//      }
      
      if document.formattedDateModified.isEmpty == false {
        Text("Date modified : \(document.formattedDateModified)")
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
          let _ = showWebsiteFor(urlString: urlString)
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
  func showWebsiteFor(urlString: String) -> Bool {
    if let url = URL(string: urlString ) {
      UIApplication.shared.open(url, options: [:])
      return true
    }
    return false
  } // private func showWbsiteFor
  
  
} // DocumentView

struct DocumentView_Previews: PreviewProvider {
  
    //MARK: - Document test data
    static let DocumentTest1 = Document(id: "1",
            documentType: "tenderNotice",
            documentDescription: "Opportunity notice on Contracts Finder" ,
            url: "https://www.contractsfinder.service.gov.uk/Notice/a0943966-090b-469d-9756-223cde76a5f2",
                                        datePublished: Date(),
                                        format: "text/html" ,
                                        language: "en",
                                        dateModified: nil
     )
  
    static let DocumentTest2 = Document(id: "2",
            documentType: "tenderNotice",
            documentDescription: "Opportunity notice on Contracts Finder" ,
            url: "https://www.contractsfinder.service.gov.uk/Notice/4c84fe67-e384-4302-972e-cd99c4a7e85e",
                                        datePublished: Date(),
                                        format: "text/html" ,
                                        language: "en",
                                        dateModified: nil
     )
  
    static let DocumentTest3 = Document(id: "3",
            documentType: "tenderNotice",
            documentDescription: "Opportunity notice on Contracts Finder" ,
            url: "https://www.contractsfinder.service.gov.uk/Notice/0074298d-4a64-4684-8e47-8e94f3afcfc3",
                                        datePublished: Date(),
                                        format: "text/html" ,
                                        language: "en",
                                        dateModified: nil
     )
  
  static var previews: some View {
    CFDocumentView(documents: [DocumentTest1, DocumentTest2,DocumentTest3
                              ])
  }
}
