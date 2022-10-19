//
//  CFSearch-Extension.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import Foundation

/// Static data and function for testing only
extension CFSearch {
  
  /// Downloaded as JSON from "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?limit=1"
  /// Contains one release
  static let cfSearchTestString = """
{"uri":"https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/Search?limit=1&publishedTo=2022-10-18T17:10:13+01:00", "version": "1.1", "extensions": [ "https://standard.open-contracting.org/profiles/eu/master/en/extension.json", "https://raw.githubusercontent.com/portaledcahn/ocds_tenderDatePublished_extension/master/extension.json", "https://raw.githubusercontent.com/open-contracting-extensions/ocds_budget_breakdown_extension/master/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_awards_datePublished_extension/main/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_partyDetails_vcse_extension/main/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_tender_suitability_extension/main/extension.json", "https://raw.githubusercontent.com/open-contracting-extensions/ocds_pagination_extension/master/extension.json" ], "publishedDate": "2022-10-18T17:08:58+01:00", "publisher": {"name": "Cabinet Office", "scheme": "GB-GOR", "uid": "D2", "uri": "https://www.gov.uk/government/organisations/cabinet-office"}, "license": "http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/", "publicationPolicy": "https://www.gov.uk/government/publications/open-contracting", "releases": [ {"ocid": "ocds-b5fd17-18de5078-9cf3-479b-9e38-8b9d3f7a0e39", "id": "0dbd2a57-18f9-4b60-b195-928dda88f4dd-581847", "language": "en", "date": "2022-05-19T17:08:58+01:00", "tag": [ "award" ], "initiationType": "tender", "tender": {"id": "CON-22-237", "title": "RStudio License and Support", "description": "RStudio Workbench Enterprise Licenses and support", "status": "complete", "classification": {"scheme": "CPV", "id": "48000000", "description": "Software package and information systems"}, "items": [ {"id": "1", "deliveryAddresses": [ {"postalCode": "E20 1JN"} ] } ], "procurementMethod": "selective", "procurementMethodDetails": "Call-off from a framework agreement", "tenderPeriod": {"endDate": "2022-10-03T23:59:59+01:00"}, "contractPeriod": {"startDate": "2022-11-17T00:00:00Z", "endDate": "2024-03-31T23:59:59+01:00"}, "suitability": {"sme": true, "vcse": false }, "mainProcurementCategory": "services"}, "parties": [ {"id": "GB-GOR-OT1085", "name": "THE FINANCIAL CONDUCT AUTHORITY", "identifier": {"legalName": "THE FINANCIAL CONDUCT AUTHORITY", "scheme": "GB-GOR", "id": "OT1085"}, "address": {"streetAddress": "12 Endeavour Square", "locality": "LONDON", "postalCode": "E201JN", "countryName": "England"}, "contactPoint": {"name": "Victoria Stone", "email": "isprocurement@fca.org.uk"}, "roles": [ "buyer" ] }, {"id": "GB-COH-01616977", "name": "BYTES SOFTWARE SERVICES LIMITED", "identifier": {"legalName": "BYTES SOFTWARE SERVICES LIMITED", "scheme": "GB-COH", "id": "01616977"}, "address": {"streetAddress": "Randalls WayLEATHERHEADSURREYKT22 7TWGB"}, "details": {"scale": "large", "vcse": false }, "roles": [ "supplier" ] } ], "buyer": {"id": "GB-GOR-OT1085", "name": "THE FINANCIAL CONDUCT AUTHORITY"}, "awards": [ {"id": "ocds-b5fd17-18de5078-9cf3-479b-9e38-8b9d3f7a0e39-1", "status": "active", "date": "2022-10-06T00:00:00+01:00", "datePublished": "2022-10-18T17:08:58+01:00", "value": {"amount": 44341.25, "currency": "GBP"}, "suppliers": [ {"id": "GB-COH-01616977", "name": "BYTES SOFTWARE SERVICES LIMITED"} ], "contractPeriod": {"startDate": "2022-11-17T00:00:00Z", "endDate": "2024-03-31T23:59:59+01:00"}, "description": "RStudio Workbench Enterprise Licenses and support", "documents": [ {"id": "1", "documentType": "awardNotice", "description": "Awarded contract notice on Contracts Finder", "url": "https://www.contractsfinder.service.gov.uk/Notice/0dbd2a57-18f9-4b60-b195-928dda88f4dd", "datePublished": "2022-10-18T17:08:58+01:00", "format": "text/html", "language": "en"} ] } ] } ], "links": {"next": "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/Search?limit=1&publishedTo=2022-10-18T17:10:13+01:00&cursor=cHVibGlzaGVkVG89MjAyMi0xMC0xOFQxNzoxMDoxMyswMTowMHxsaW1pdD0xfG5leHRDdXJzb3I9NDgwMzc4"}}
"""
  /// Converts the test JSON string into data
  static let cfSearchTestData = Data(cfSearchTestString.utf8)
  
  /// Converts the test data into a CFSearch struct
  static func getTestCFSearch() -> CFSearch {
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy  = .useDefaultKeys
    decoder.dataDecodingStrategy = .deferredToData
    decoder.dateDecodingStrategy = .iso8601

    do {
      let cfSearch = try decoder.decode(CFSearch.self, from: CFSearch.cfSearchTestData)
      
      return cfSearch
    } catch let DecodingError.dataCorrupted(context) {
      print("Context: \(context)")
    } catch let DecodingError.keyNotFound(key, context) {
      print("Key '\(key)' not found:", context.debugDescription)
      print("codingPath:", context.codingPath)
    } catch let DecodingError.valueNotFound(value, context) {
      print("Value '\(value)' not found:", context.debugDescription)
      print("codingPath:", context.codingPath)
    } catch let DecodingError.typeMismatch(type, context)  {
      print("Type '\(type)' mismatch:", context.debugDescription)
      print("codingPath:", context.codingPath)
    } catch {
      print("SearchEngine.search(): \(error.localizedDescription)")
      print("SearchEngine.search(): \(error)")
    }
    
    return CFSearch()
  }
}
