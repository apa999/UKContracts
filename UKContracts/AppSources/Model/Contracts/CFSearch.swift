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


