//
//  CPVModel.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

///  Manages the CPV data
///
///  The CPV data is the Common Procurement Vocabulary data that is loaded from the CpvCodes.csv file
///  in resources. The data is hierarchical, with parents having children, and grandchildren etc.
///
///  The CPV objects is a  __Class__, this makes it easier to update CPV values when selected or deselected.
///
///__Operations__
///
/// selectAll() Selects all CPV's (isSelected = True)
///
/// deselectAll() Deselects all CPV's (isSelected = False)
///
/// filterBy(_: String) Filters the CPV's, selecting CPV's where the CPV label contains the search string. The search is case-insensitive. The filtered CSV's are saved
///
/// set(_ : CPV, flag: Bool) Selects or deselects the CPV; All the CPV's descendants are selected or deselected to conform with the new value. If the CPV is selected, then its parent (grandparent etc) are selected as well, but if the CPV is deselected, then its parent (grandparent etc) are unchanged.
///
///
import Foundation

struct CPVModel {
  
  //MARK: - Properties
  
  /// Flat store of CPVs
  private (set) var flatCpvs = [CPV]()
  
  /// Hierarchical store of CPVs
  private (set) var cpvs = [CPV]()
 
  /// Permanent store of CPVs
  private var savedCpvs = [CPV]()
  
  /// Index of last parent - performance enhancer
  private var indexOfLastParent = 0

  
  //MARK: - Init
  
  /// Loads the CPV codes from the flat file and chcks if the user has saved filtered CPV codes.
  ///
  /// If the user has saved filtered CPV codes, then use these, otherwise use the full hierarchical list
  init() {
    var cpvLoader = CPVLoader()
    
    (flatCpvs, cpvs) = cpvLoader.getCpvs()
    
    /// Store the cpvs so we can restore when required
    savedCpvs = cpvs
    
    /// Get the filtered CPV's. If there are some, then display these
    let filteredCvs = loadFilteredCpvs()
    
    if filteredCvs.count > 0 {
      cpvs = filteredCvs
    }
    
  } // init
  
  //MARK: - Public functions
  
  
  /// Deselects all the CPV's
  mutating func deselectAll() {
    setAllTo(false)
  } // deselectAll()
  
  /// Selects all the CPV's
  mutating func selectAll() {
    setAllTo(true)
  } // selectAll()
  
  /// Toggle the isSelected
  mutating func toggleIsSelected(for cpv: CPV) {
  
    if cpv.isSelected == true {
      cpv.setIsSelectedTo(false)
      deselect(cpv: cpv)
    } else {
      cpv.setIsSelectedTo(true)
      select(cpv: cpv)
    }
  } // func toggleIsSelected(for cpv: CPV)
  

  /// Filter the CPV's by the user's search string
  ///
  /// If the searchText is empty, then restore the CPV's
  mutating func filterCPVs(by searchText: String, settings: SettingsModel) {
    
    settings.cpvFilteredString = searchText.trimmingCharacters(in: .whitespaces)
    
    let str = searchText.trimmingCharacters(in: .whitespaces).lowercased()
    
    if str.isEmpty {
      cpvs = savedCpvs
      settings.saveFilteredCpvs(cpvs: [])
      
    } else {
      cpvs = flatCpvs.filter( {$0.codeLabel.lowercased().contains(str) } )
      settings.saveFilteredCpvs(cpvs: cpvs)
    }
  } //  mutating func filterCPVs()
  


  //MARK: - Private functions

  /// Deselects this CPV
  mutating private func deselect(cpv: CPV) {
    setAllDescendants(of: cpv, to: false)
  }
  
  private mutating func loadFilteredCpvs() -> [CPV]{
    let settings = SettingsModel()
    let filteredCpvCodes = settings.getFilteredCpvs()
    var filteredCpvs     = [CPV]()
    
    if filteredCpvCodes.count > 0 {
      for filteredCpvCode in filteredCpvCodes {
        if let filteredCpv = flatCpvs.first(where: {$0.code == filteredCpvCode } ) {
          filteredCpvs.append(filteredCpv)
        }
      } // for filteredCpvCode in filteredCpvCodes
    } // if filteredCpvCodes.count > 0
    
    return filteredCpvs
  } // func loadFilteredCpvs()
  
  /// Selects all this CPV
  mutating private func select(cpv: CPV) {
    setAllDescendants(of: cpv, to: true)
    selectParents(of: cpv)
  }
  
  /// Selects or Deselects all the CPV's
  ///
  ///  - Remark: CPV's are classes and are shared in the flatCpvs and cpvs arrays, and need to be updated once
  mutating private func setAllTo(_ flag: Bool) {
    flatCpvs.forEach { $0.setIsSelectedTo(flag) }
  } // func setAllTo(_ flag: Bool)
  
  /// Selects or deselects all the descandants of the CPV
  mutating private func setAllDescendants(of cpv: CPV, to flag: Bool)  {
    
    func updateCpvIsSelect(for cpv: CPV, with flag: Bool) {
      cpv.setIsSelectedTo(flag)
      for child in cpv.children {
        updateCpvIsSelect(for: child, with: flag)
      }
    }
    
    updateCpvIsSelect(for: cpv, with: flag)
  } // func setAllTo(_ flag: Bool)

  /// Select the parent, grandparent etc of the the CPV
  mutating func selectParents(of cpv: CPV) {
    var tmpCpv = cpv
   
    while tmpCpv.parentCode.isEmpty == false {
      if let parentCpv = flatCpvs.first(where: {$0.code == tmpCpv.parentCode } ) {
        parentCpv.setIsSelectedTo(true)
        tmpCpv = parentCpv
      } else {
        break
      }
    } // while tmpCpv.parentCode.isEmpty == false
  } // func selectParents(of cpv: CPV)
  
} // struct CPVModel

