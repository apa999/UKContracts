//
//  DummyDataLoader.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 19/10/2022.
//

import XCTest
@testable import UKContracts

/// Loads the CFSearch test data and returns a CFSearch struct
struct DummyDataLoader {
  
  func load(data: Data) -> CFSearch {
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy  = .convertFromSnakeCase
    decoder.dataDecodingStrategy = .deferredToData
    decoder.dateDecodingStrategy = .iso8601

    do {
      let cfSearch = try decoder.decode(CFSearch.self, from: data)
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
      print("DummyDataLoader.load(): \(error.localizedDescription)")
      print("DummyDataLoader.load(): \(error)")
    }
    
    return CFSearch()
  } // func load()
} // struct DummyDataLoader
