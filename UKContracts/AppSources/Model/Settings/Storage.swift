//
//  Storage.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import SwiftUI

class Storage: NSObject {
  
  static func archiveIntArray(object : [Int]) -> Data {
    do {
      let data = try NSKeyedArchiver.archivedData(withRootObject: object, requiringSecureCoding: false)
      return data
    } catch {
      fatalError("Can't encode data: \(error)")
    }
  }
  
  static func loadIntArray(data: Data) -> [Int] {
    do {
      guard let array = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? [Int] else {
        return []
      }
      return array
    } catch {
      fatalError("loadIntArray - Can't encode data: \(error)")
    }
  }
  
  static func archiveStringArray(object : [String]) -> Data {
    do {
      let data = try NSKeyedArchiver.archivedData(withRootObject: object, requiringSecureCoding: false)
      return data
    } catch {
      fatalError("Can't encode data: \(error)")
    }
    
  }
  
  static func loadStringArray(data: Data) -> [String] {
    do {
      guard let array = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? [String] else {
        return []
      }
      return array
    } catch {
      fatalError("loadStringArray - Can't encode data: \(error)")
    }
  }
}

