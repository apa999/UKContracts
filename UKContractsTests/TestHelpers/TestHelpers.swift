//
//  TestHelpers.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 21/10/2022.
//

import Foundation

struct TestHelpers {
  
  /// Returns a date from the string or nil if date is invalid
  /// The expected date string format is: "yyyy-MM-dd'T'HH:mm:ssZ"
  /// Example: TestHelpers.getDateFor("2022-10-19T09:20:00+0000")
  static func getDateFor(_ dateStr: String) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    if let date = dateFormatter.date(from:dateStr) {
      return date
    }
    return nil
  }
  
  
  
  static  func decode<T: Decodable>(
    _ type: T.Type = T.self,
    from data: Data,
    keyDecodingStrategy : JSONDecoder.KeyDecodingStrategy  = .useDefaultKeys,
    dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .deferredToData,
    dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .iso8601
  ) throws  -> T {
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy  = keyDecodingStrategy
    decoder.dataDecodingStrategy = dataDecodingStrategy
    decoder.dateDecodingStrategy = dateDecodingStrategy
    
    let decoded = try decoder.decode(T.self, from: data)
    return decoded
  }
}
