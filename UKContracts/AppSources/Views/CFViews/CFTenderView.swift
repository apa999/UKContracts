//
//  CFTView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

/*
 struct Tender : Codable {
 let id                        : String?
 let title                     : String?
 let tenderDescription         : String?
 let datePublished             : Date?
 let status                    : String?
 let classification            : Classification?
 let items                     : [Item]?
 let minValue                  : MinValue?
 let value                     : MinValue?
 let procurementMethod         : String?
 let procurementMethodDetails  : String?
 let tenderPeriod              : TenderPeriod?
 let contractPeriod            : Period?
 let suitability               : Suitability?
 let mainProcurementCategory   : String?
 let documents                 : [Document]?
 let additionalClassifications : [Classification]?
 let communication             : Communication?
 */

import SwiftUI

/// Displays the Tender details
struct CFTenderView: View {
  
  var tender: Tender
  
  /// True when the dopcuments view is visible
  @State private var showingDocuments = false
  
  var body: some View {
    ZStack {
      Constants.backgroundColour
        .ignoresSafeArea()
      ScrollView {
        VStack(spacing: 10) {
          Text("Tender")
            .font(.title2)
          tenderDetails
        } // VStack
      } // ScrollView
    } // Zstack
    .foregroundColor(Constants.textColor)
    
    .sheet(isPresented: $showingDocuments) {
      if let documents = tender.documents {
        CFDocumentView(documents: documents)
      }
    }
    
  } // body
  
  var tenderDetails: some View {
    VStack(spacing: 10) {
      VStack(alignment: .center, spacing: 10) {
        Text("\(tender.title ?? "No tender title")")
          .font(.title2)
      } // VStack 2
      
      VStack(alignment: .leading, spacing: 10) {
        Group {
          tenderHeader
          classificationView
          itemDetails
          
          tenderValues
          
          Constants.divider
          procurement
          Constants.divider
          contractPeriod
          Constants.divider
        }
        Group {
          suitability
          Constants.divider
          mainProcurement
        }
      
        controlButtons
      } // VStack 3
    } // VStack 1
    .padding()
  } // tenderDetails
  
  /// Tender details
  private var tenderHeader: some View  {
    VStack(alignment: .leading, spacing: 10) {
      
      if let id = tender.id {
        Text("Id:  \(id)")
      }
  
      if let description = tender.tenderDescription {
        Text("Description:  \(description)")
      }
      
      Text("Date published:  \(tender.formattedDatePublished )")
      
      if let _ = tender.status {
        Text("Status:  \(tender.fStatus)")
      }
    } // VStack 1
  } // private var tenderHeader
  
  
  private var classificationView: some View {
    Group {
      if let classification = tender.classification {
        if let scheme = classification.scheme,
           let description = classification.classificationDescription,
           let id = classification.id {
          
          VStack(alignment: .center, spacing: 5) {
            Constants.divider
            Text("Classification")
              .font(.title3)
          } // VStack
          
          VStack(alignment: .leading, spacing: 10) {
            Text("Scheme : \(scheme)")
            Text("Id : \(id)")
            Text("Description : \(description)")
          } // VStack
          
        } //if let ...
      } else {
        EmptyView()
      }
    } // Group
  } // private var classification
  
  private var itemDetails: some View {
    Group {
      if let items = tender.items {
        
        VStack(alignment: .center, spacing: 5) {
          Constants.divider
          Text("Items")
            .font(.title3)
        } // VStack
          
        ForEach(items, id: \.self) { item in
          Text("item.id:  \(item.id ?? "No tender Id")")
          
          ForEach(item.deliveryAddresses ?? [], id: \.self) { address in
            Text("Address: \(address.fDeliveryAddress)")
          } // ForEach(item
          
        } // ForEach(tender.items
      }
    } // Group
  } // itemDetails
  
  private var tenderValues: some View {
  
    Group {
      
      if let _ = tender.minValue , let _ = tender.value {
        VStack(alignment: .center, spacing: 5) {
          Constants.divider
          Text("Values")
            .font(.title3)
        } // VStack
      }
    
      VStack {
        if let minValue = tender.minValue {
          Text("Minimum value:  \(minValue.amount ?? 0)")
          Text("Minimum value:  \(minValue.currency ?? "")")
        }
        
        if let value = tender.value {
          Text("Value:  \(value.amount ?? 0)")
          Text("Value:  \(value.currency ?? "")")
        } // if let value = tender.value
      } // VStack
    } // Group
  } // tenderValues
  
  private var procurement: some View {
    VStack{
      Text("Procurement method  \(tender.procurementMethod ?? "")")
      Text("Procurement description \(tender.procurementMethodDetails ?? "")")
    } // VStack
  } // procurement
  
  private var tenderPeriod: some View {
    VStack{
      if let tenderPeriod = tender.tenderPeriod {
        Text("Tender period  \(tenderPeriod.formattedEndDate)")
        Text("Procurement description \(tender.procurementMethodDetails ?? "")")
      }
    } // VStack
  } // tenderPeriod
  
  private var contractPeriod: some View {
    VStack{
      if let contractPeriod = tender.contractPeriod {
        Text("Contract period start \(contractPeriod.formattedStartDate)")
        Text("Contract period end \(contractPeriod.formattedEndDate)")
      }
    } // VStack
  } // contractPeriod
  
  private var suitability: some View {
    VStack{
      if let suitability = tender.suitability {
        Text("SME  \(suitability.sme  ?? false ? "Yes" : "No")")
        Text("VCSE \(suitability.vcse ?? false ? "Yes" : "No")")
      }
    } // VStack
  } // suitability
  
  private var mainProcurement: some View {
    VStack{
      if let mainProcurementCategory = tender.mainProcurementCategory {
        Text("mainProcurementCategory: \(mainProcurementCategory)")
      }
    } // VStack
  } // mainProcurement
  
  private var controlButtons: some View  {
    HStack(alignment: .center) {
      Spacer()
      if tender.documents != nil {
        documentsButton
      }
      Spacer()
    }
    
  }
  
  private var documentsButton: some View {
    Button {
      if let _ = tender.documents {
        showingDocuments = true
      }
    }
  label: {
    Text("Documents")
  } // label
  .foregroundColor(Constants.textColor)
  .font(.title3)
  .opacity( tender.documents != nil ? 1 : 0 )
  } // documentsButton
  
} // struct TenderView

struct TenderView_Previews: PreviewProvider {
  
  static let cfSearch = CFSearch.getTestCFSearch()
  static let rNum = Int.random(in: 0..<(cfSearch.releases?.count ?? 1) )
  
  static var previews: some View {
    CFTenderView(tender: (cfSearch.releases?[0].tender)!)
  }
}
