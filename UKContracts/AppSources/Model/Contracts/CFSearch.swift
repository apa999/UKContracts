//
//  CFDataModel.swift
//  TestCF
//
//  Created by Anthony Abbott on 13/10/2022.
//



import Foundation

// MARK: - CFSearch
struct CFSearch : Codable {
  let uri               : String
  let version           : String
  let extensions        : [String]
  let publishedDate     : Date
  let publisher         : Publisher
  let license           : String
  let publicationPolicy : String
  let releases          : [Release]?
  let links             : Links?
}

extension CFSearch {
  init() {
    uri = ""
    version = ""
    extensions = [""]
    publishedDate = Date()
    publisher = Publisher(name: "", scheme: "", uid: "", uri: "")
    license = ""
    publicationPolicy = ""
    releases = nil
    links = nil
  }
}

// MARK: - Links
struct Links : Codable {
  let next : String?
}

// MARK: - Publisher
struct Publisher : Codable {
  let name   : String?
  let scheme : String?
  let uid    : String?
  let uri    : String?
}


// MARK: - Release
struct Release : Codable, Identifiable {
  let ocid           : String?
  let id             : String?
  let language       : String?
  let date           : Date?
  let tag            : [String]?
  let initiationType : String?
  let tender         : Tender?
  let parties        : [Party]?
  let buyer          : Buyer?
  let awards         : [Award]?
  let planning       : Planning?
  
  var formattedDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    return formatter.string(from: date ?? Date())
  }
}

// MARK: - Award
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
  
  enum CodingKeys : String, CodingKey {
    case id
    case status
    case date
    case datePublished
    case value
    case suppliers
    case contractPeriod
    case documents
    case awardDescription = "description"
  }
}

// MARK: - Period
struct Period : Codable {
  let startDate : Date?
  let endDate   : Date?
}

// MARK: - Document
struct Document : Codable {
  let id                  : String?
  let documentType        : String?
  let documentDescription : String?
  let url                 : String?
  let datePublished       : Date?
  let format              : String?
  let language            : String?
  let dateModified        : Date?
  
  enum CodingKeys : String, CodingKey {
    case id, documentType
    case documentDescription = "description"
    case url, datePublished, format, language, dateModified
  }
}


// MARK: - Buyer
struct Buyer: Codable {
  let id   : String?
  let name : String?
}

// MARK: - MinValue
struct MinValue : Codable {
  let amount   : Double?
  let currency : String?
}


// MARK: - Party
struct Party : Codable, Identifiable {
  let id           : String?
  let name         : String?
  let identifier   : Identifier?
  let address      : Address?
  let contactPoint : ContactPoint?
  let details      : Details?
  let roles        : [String]
}

// MARK: - Address
struct Address : Codable {
  let streetAddress : String?
  let locality      : String?
  let postalCode    : String?
  let countryName   : String?
}


// MARK: - ContactPoint
struct ContactPoint : Codable {
  let name      : String?
  let email     : String
  let telephone : String?
}

// MARK: - Details
struct Details : Codable {
  let url   : String?
  let scale : String?
  let vcse  : Bool?
}


// MARK: - Identifier
struct Identifier : Codable {
  let legalName : String?
  let scheme    : String?
  let id        : String?
}


// MARK: - Planning
struct Planning : Codable {
  let budget    : Budget?
  let documents : [Document]?
}

// MARK: - Budget
struct Budget : Codable {
  let budgetBreakdown : [BudgetBreakdown]
}

// MARK: - BudgetBreakdown
struct BudgetBreakdown : Codable {
  let id                         : String?
  let period                     : Period?
  let budgetBreakdownDescription : String?
  let amount                     : MinValue?
  
  enum CodingKeys : String, CodingKey {
    case id, period
    case budgetBreakdownDescription = "description"
    case amount
  }
}

// MARK: - Tender
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
  
  enum CodingKeys : String, CodingKey {
    case id, title
    case tenderDescription = "description"
    case datePublished
    case status
    case classification
    case items
    case minValue
    case value
    case procurementMethod
    case procurementMethodDetails
    case tenderPeriod
    case contractPeriod
    case suitability
    case mainProcurementCategory
    case documents
    case additionalClassifications
    case communication
  }
}

// MARK: - Classification
struct Classification : Codable {
  let scheme                    : String?
  let id                        : String?
  let classificationDescription : String?
  
  enum CodingKeys : String, CodingKey {
    case scheme, id
    case classificationDescription = "description"
  }
}

// MARK: - Communication
struct Communication : Codable {
  let futureNoticeDate : Date?
}

// MARK: - Item
struct Item : Codable {
  let id                : String?
  let deliveryAddresses : [DeliveryAddress]?
}

// MARK: - DeliveryAddress
struct DeliveryAddress : Codable {
  let region      : String?
  let countryName : String?
  let postalCode  : String?
}


// MARK: - Suitability
struct Suitability : Codable {
  let sme  : Bool?
  let vcse : Bool?
}

// MARK: - TenderPeriod
struct TenderPeriod : Codable {
  let endDate : Date?
}

extension CFSearch {
  
  static let cfSearchTestString = """
{"uri":"https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/Search?limit=1&publishedTo=2022-10-18T17:10:13+01:00", "version": "1.1", "extensions": [ "https://standard.open-contracting.org/profiles/eu/master/en/extension.json", "https://raw.githubusercontent.com/portaledcahn/ocds_tenderDatePublished_extension/master/extension.json", "https://raw.githubusercontent.com/open-contracting-extensions/ocds_budget_breakdown_extension/master/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_awards_datePublished_extension/main/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_partyDetails_vcse_extension/main/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_tender_suitability_extension/main/extension.json", "https://raw.githubusercontent.com/open-contracting-extensions/ocds_pagination_extension/master/extension.json" ], "publishedDate": "2022-10-18T17:08:58+01:00", "publisher": {"name": "Cabinet Office", "scheme": "GB-GOR", "uid": "D2", "uri": "https://www.gov.uk/government/organisations/cabinet-office"}, "license": "http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/", "publicationPolicy": "https://www.gov.uk/government/publications/open-contracting", "releases": [ {"ocid": "ocds-b5fd17-18de5078-9cf3-479b-9e38-8b9d3f7a0e39", "id": "0dbd2a57-18f9-4b60-b195-928dda88f4dd-581847", "language": "en", "date": "2022-05-19T17:08:58+01:00", "tag": [ "award" ], "initiationType": "tender", "tender": {"id": "CON-22-237", "title": "RStudio License and Support", "description": "RStudio Workbench Enterprise Licenses and support", "status": "complete", "classification": {"scheme": "CPV", "id": "48000000", "description": "Software package and information systems"}, "items": [ {"id": "1", "deliveryAddresses": [ {"postalCode": "E20 1JN"} ] } ], "procurementMethod": "selective", "procurementMethodDetails": "Call-off from a framework agreement", "tenderPeriod": {"endDate": "2022-10-03T23:59:59+01:00"}, "contractPeriod": {"startDate": "2022-11-17T00:00:00Z", "endDate": "2024-03-31T23:59:59+01:00"}, "suitability": {"sme": true, "vcse": false }, "mainProcurementCategory": "services"}, "parties": [ {"id": "GB-GOR-OT1085", "name": "THE FINANCIAL CONDUCT AUTHORITY", "identifier": {"legalName": "THE FINANCIAL CONDUCT AUTHORITY", "scheme": "GB-GOR", "id": "OT1085"}, "address": {"streetAddress": "12 Endeavour Square", "locality": "LONDON", "postalCode": "E201JN", "countryName": "England"}, "contactPoint": {"name": "Victoria Stone", "email": "isprocurement@fca.org.uk"}, "roles": [ "buyer" ] }, {"id": "GB-COH-01616977", "name": "BYTES SOFTWARE SERVICES LIMITED", "identifier": {"legalName": "BYTES SOFTWARE SERVICES LIMITED", "scheme": "GB-COH", "id": "01616977"}, "address": {"streetAddress": "Randalls WayLEATHERHEADSURREYKT22 7TWGB"}, "details": {"scale": "large", "vcse": false }, "roles": [ "supplier" ] } ], "buyer": {"id": "GB-GOR-OT1085", "name": "THE FINANCIAL CONDUCT AUTHORITY"}, "awards": [ {"id": "ocds-b5fd17-18de5078-9cf3-479b-9e38-8b9d3f7a0e39-1", "status": "active", "date": "2022-10-06T00:00:00+01:00", "datePublished": "2022-10-18T17:08:58+01:00", "value": {"amount": 44341.25, "currency": "GBP"}, "suppliers": [ {"id": "GB-COH-01616977", "name": "BYTES SOFTWARE SERVICES LIMITED"} ], "contractPeriod": {"startDate": "2022-11-17T00:00:00Z", "endDate": "2024-03-31T23:59:59+01:00"}, "description": "RStudio Workbench Enterprise Licenses and support", "documents": [ {"id": "1", "documentType": "awardNotice", "description": "Awarded contract notice on Contracts Finder", "url": "https://www.contractsfinder.service.gov.uk/Notice/0dbd2a57-18f9-4b60-b195-928dda88f4dd", "datePublished": "2022-10-18T17:08:58+01:00", "format": "text/html", "language": "en"} ] } ] } ], "links": {"next": "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/Search?limit=1&publishedTo=2022-10-18T17:10:13+01:00&cursor=cHVibGlzaGVkVG89MjAyMi0xMC0xOFQxNzoxMDoxMyswMTowMHxsaW1pdD0xfG5leHRDdXJzb3I9NDgwMzc4"}}
"""
  
  static let cfSearchTestData = Data(cfSearchTestString.utf8)
  
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
