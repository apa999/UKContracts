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
      
      VStack {
        Text("Tender")
          .font(.title2)
        Spacer()
        tenderDetails
      }
      
    } // Zstack
    .foregroundColor(Constants.textColor)
    
    .sheet(isPresented: $showingDocuments) {
      if let documents = tender.documents {
        CFDocumentView(documents: documents)
      }
    }
    
  } // body
  
  var tenderDetails: some View {
    VStack(alignment: .leading, spacing: 10) {
      tenderHeader
      itemDetails
      tenderValues
      procurement
      contractPeriod
      suitability
      mainProcurement
      
      controlButtons
      
    } // VStack
    .padding()
  } // tenderDetails
  
  /// Tender details
  private var tenderHeader: some View  {
    VStack(alignment: .leading) {
      Text("Id:  \(tender.id ?? "No tender Id")")
      Text("Title:  \(tender.title ?? "No tender title")")
      Text("Description:  \(tender.tenderDescription ?? "No tender tenderDescription")")
      
      Text("Date published:  \(tender.formattedDatePublished )")
      
      Text("Status:  \(tender.title ?? "No tender status")")
      Text("Classifacation scheme:  \(tender.classification?.scheme ?? "No tender status")")
      Text("Classifacation description:  \(tender.classification?.classificationDescription ?? "No tender status")")
    } // VStack
  }
  
  private var itemDetails: some View {
    ForEach(tender.items ?? [], id: \.self) { item in
      Text("item.id:  \(item.id ?? "No tender Id")")
      
      ForEach(item.deliveryAddresses ?? [], id: \.self) { address in
        Text("Region  \(address.region ?? "")")
        Text("Country  \(address.countryName ?? "")")
        Text("Postal code  \(address.postalCode ?? "")")
      } // ForEach(item
    } // ForEach(tender.items
  } // itemDetails
  
  private var tenderValues: some View {
    VStack {
      if let minValue = tender.minValue {
        Text("Min value:  \(minValue.amount ?? 0)")
        Text("Min value:  \(minValue.currency ?? "")")
      }
      
      if let value = tender.value {
        Text("Value:  \(value.amount ?? 0)")
        Text("Value:  \(value.currency ?? "")")
      } // if let value = tender.value
    } // VStack
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
//  .opacity( tender.documents != nil ? 1 : 0 )
  } // documentsButton
  
} // struct TenderView

struct TenderView_Previews: PreviewProvider {
  
  static let cfSearch = CFSearch.getTestCFSearch()
  
  static var previews: some View {
    CFTenderView(tender: (cfSearch.releases?.first!.tender)!)
  }
}
