//
//  CPV.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

/**
 CPV codes are a system of classification for public procurement which uses standardised vocabulary to help procurement personnel classify their contract notices consistently and to make it easier for suppliers and contracting authorities to find notices.

 CPV stands for Common Procurement Vocabulary and the system was developed by the European Union as a tool to improve transparency and efficiency in public procurement. Using a standardised coding format also makes it easier to facilitate the processing of tenders published in the Official Journal of the European Union (OJEU). The use of CPVs has been mandatory in the European Union since 1 February 2006.

 The CPV system consists of a main vocabulary, which defines the type of contract; and a supplementary vocabulary, which adds further qualitative information about the contract. The main vocabulary is made up of approximately 9450 terms, listing goods, works and services which are commonly used in procurement.

 Each CPV code has a nine-digit structure, with the first two digits representing the top-level categories, the next six representing ever more defined levels of classification, and a ninth digit verifying the previous digits. The more numbers from 1 to 9 a CPV code has, the more specific the item is; and the more zeros it has, the more general it is.

 For example:

 The first two digits identify the divisions (XX000000-Y);
 The first three digits identify the groups (XXX00000-Y);
 The first four digits identify the classes (XXXX0000-Y);
 The first five digits identify the categories (XXXXX000-Y);
 Each of the next three digits establishes a greater degree of precision within the relevant category, while the ninth and final digit serves to verify the previous digits.

 Supplementary vocabulary is used to provide further qualitative information, and to expand the description of the subject of a contract. This vocabulary is made up of an alphanumeric code with corresponding wording allowing further details to be added regarding the specific nature or destination of the goods to be purchased.
 The alphanumeric code is made up of a first level, which is a letter corresponding to a section; and a second level, which comprises four digits that define its attributes.
*/

import Foundation

class CPV: Hashable, Identifiable, CustomStringConvertible {
  
  static func == (lhs: CPV, rhs: CPV) -> Bool {
    lhs.id == rhs.id
  } // static func ==
  
  func hash(into hasher: inout Hasher) {
      hasher.combine(id)
  } // func hasher()
  
  /// Static id
  static var id = 0
  
  /// Properties
  private (set) var code             : String
  private (set) var parentCode       : String
  private (set) var hasChildren      : Bool
  private (set) var codeLabel        : String
  private (set) var isSelected       : Bool
  private (set) var children         : [CPV]
  private (set) var id               : Int

  /// Init
  init(fields: [String]) {
    guard fields.count == Constants.cpvCodeDataNumberOfFields else {
      fatalError("Attempting to initialise CPV with invalid data. Exepcted \(Constants.cpvCodeDataNumberOfFields), but receieved \(fields.count) fields.")
    } // guard
    
    code         = fields[0]
    parentCode   = fields[1]
    hasChildren  = fields[2] == "1" ? true : false
    codeLabel    = fields[3]
    isSelected   = false
    children     = [CPV]()
    
    /// Set the id
    id      = CPV.id
    CPV.id += 1
  } // init()
  
  //MARK: - Public functions
  func addChild(_ child: CPV) {
    children.append(child)
  } // func addChild()
  
  func toggleIsSelected() {
    isSelected.toggle()
  } // func toggleIsSelected()
  
  func setIsSelectedTo(_ flag: Bool) {
    isSelected = flag
  } // func setIsSelectedTo()
  
  //MARK: - CustomStringConvertible
  var description: String {
    var s = ""
    s += "Code       : \(code)\n"
    s += "Parent     : \(parentCode)\n"
    s += "Label      : \(codeLabel)\n"
    s += "Children   : \(children.count)\n"
    s += "isSelected : \(isSelected)\n\n"
    return s
  } // var description: String
} // CPV

