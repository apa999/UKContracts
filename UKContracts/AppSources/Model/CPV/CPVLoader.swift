//
//  CPVLoader.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import Foundation

/// Loads the CPV data from the flat file in resources
///
/// The CPV data is the Common Procurement Vocabulary data that is loaded from the CpvCodes.csv file
/// in resources. The data is hierarchical, with parents having children, and grandchildren etc.
///
/// The CPV objects is a  __Class__, this makes it easier to update CPV values when selected or deselected.
///
/// The data is stored in two structures:
/// 1. Flat file
/// 2. Hierarchical
///
///
struct CPVLoader {
  
  /// Stores the CPV's in flat structure (CPV is a class)
  var flatCpvs = [CPV]()
  
  /// Stores the CPV's in hierarchical structure (CPV is a class)
  var cpvs = [CPV]()
  
  //MARK: - Public functions
  
  /// Loads the cpvsFile (flat file) and cpvs (hierarchical)
  ///
  /// - Returns: ([CPV], [CPV])
  mutating func getCpvs() -> ([CPV], [CPV]) {
    loadCodes()
    return (flatCpvs, cpvs)
  }
  

  //MARK: - Private functions
  
  /// Reads the CPV codes and builds the flat and hierarchical stores
  private mutating func loadCodes() {
    if let url = Bundle.main.url(forResource: Constants.CpvCodes, withExtension: "csv") {
      do {
        let data  = try String(contentsOfFile: url.relativePath)
        let lines = data.components(separatedBy: "\n")
        
        buildCpvs(lines: lines)
  
      } catch {
        fatalError("Could not open CPV data file: \(Constants.CpvCodes), error: \(error)")
      }
    } else {
      fatalError("Could not find CPV data file: \(Constants.CpvCodes)")
    }
  } // private func loadCodes()
  
  
  mutating private func buildCpvs(lines: [String]) {
    var indexOfLastParent = 0
    
    for index in lines.indices {
      let cpvCodeValues = lines[index].split(separator: "|", omittingEmptySubsequences: false).map { String($0) }
      
      if cpvCodeValues.count == Constants.cpvCodeDataNumberOfFields {
        let cpv = CPV(fields: cpvCodeValues)
        
        flatCpvs.append(cpv)
        
        if cpv.parentCode.count == 0 {
          cpvs.append(cpv)
          indexOfLastParent = cpvs.count - 1
        }
        
        else if cpvs[indexOfLastParent].code == cpv.parentCode {
          cpvs[indexOfLastParent].addChild(cpv)
        } else {
          if let parent = findParent(child: cpv, parent: cpvs[0]) {
            parent.addChild(cpv)
          }
        }
        
        if cpv.hasChildren { indexOfLastParent = cpvs.count - 1 }
        
      } else if  lines[index].count != 0 {
        print("Invalid line found in CPV data at line: \(index)")
        print("Invalid line: \(lines[index])")
      }
    } // for index in lines.indices
  } // mutating private func buildCpvs()
  
  /// Find the parent CPV
  private func findParent(child: CPV, parent: CPV) -> CPV? {
    
    if parent.code == child.parentCode {
      return parent
    }
    
    for node in parent.children.reversed() {
        return findParent(child: child, parent: node)
    }
    return nil
  } // private func findParent()
} // CPVLoader

