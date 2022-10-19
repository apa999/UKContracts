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
    uri               = ""
    version           = ""
    extensions        = [""]
    publishedDate     = Date()
    publisher         = Publisher(name: "", scheme: "", uid: "", uri: "")
    license           = ""
    publicationPolicy = ""
    releases          = nil
    links             = nil
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
  
  var formattedStartDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    return formatter.string(from: startDate ?? Date())
  }
  
  var formattedEndDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    return formatter.string(from: endDate ?? Date())
  }
}

// MARK: - Document
struct Document : Codable, Identifiable {
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
  
  var formattedDatePublished: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    return formatter.string(from: datePublished ?? Date())
  }
  
  var formattedDateModified: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    return formatter.string(from: dateModified ?? Date())
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
  
  var formattedDatePublished: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    return formatter.string(from: datePublished ?? Date())
  }
  
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
struct Item : Codable, Equatable, Hashable {
  
  let id                : String?
  let deliveryAddresses : [DeliveryAddress]?
  
  static func == (lhs: Item, rhs: Item) -> Bool {
    return lhs.id == rhs.id
  }
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
    hasher.combine(deliveryAddresses)
  }
}

// MARK: - DeliveryAddress
struct DeliveryAddress : Codable, Hashable {
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
  
  var formattedEndDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E d MMM y, HH:mm"
    return formatter.string(from: endDate ?? Date())
  }
}


