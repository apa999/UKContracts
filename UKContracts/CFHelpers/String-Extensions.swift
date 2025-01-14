//
//  String-Extensions.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import Foundation

extension String {
  func capitalizingFirstLetter() -> String {
    return prefix(1).capitalized + dropFirst()
  }
  
  mutating func capitalizeFirstLetter() {
    self = self.capitalizingFirstLetter()
  }
  
  func deletingPrefix(_ prefix: String) -> String {
    guard self.hasPrefix(prefix) else { return self }
    return String(self.dropFirst(prefix.count))
  }
  
  /// Hats off to ChatGPT.
  func toCamelCase(separator: String = " ") -> String {
    // Split the string into words separated by spaces
    let words = self.split(separator: separator)
    
    // Capitalize the first letter of each word and join them together
    let camelCased = words.map { word in
      return word.capitalized
    }.joined()
    
    return camelCased
  }
  
  /// Check if both <first"> and '<last>' exist in the string
  func extractData(from b: String, to e: String, occurrence: Int = 1) -> String? {
    
    var currentOccurrence = 0
    var startRange: Range<String.Index>?
    var endRange: Range<String.Index>?
    
    // Start searching from the beginning of the string
    var searchStartIndex = self.startIndex
    
    while currentOccurrence < occurrence {
      guard let foundStartRange = self.range(of: b, range: searchStartIndex..<self.endIndex) else {
        return nil
      }
      
      guard let foundEndRange = self.range(of: e, range: foundStartRange.upperBound..<self.endIndex) else {
        return nil
      }
      
      currentOccurrence += 1
      
      if currentOccurrence == occurrence {
        startRange = foundStartRange
        endRange = foundEndRange
        break
      }
      
      searchStartIndex = foundEndRange.upperBound
    }
    
    // If both ranges are found, extract the substring
    if let startRange = startRange, let endRange = endRange {
      let extracted = self[startRange.upperBound..<endRange.lowerBound]
      return String(extracted)
    }
    
    return nil
  }
  
  
  /// Hats off to ChatGPT.
  func isValidEmail() -> Bool {
    let emailRegex = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,64}$"#
    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
    return emailPredicate.evaluate(with: self)
  }
  
  /// Hats off to ChatGPT.
  func isValidUKPostcode() -> Bool {
    let postcodeRegex = #"^[A-Z]{1,2}[0-9][0-9A-Z]?\s?[0-9][A-Z]{2}$"#
    let postcodePredicate = NSPredicate(format: "SELF MATCHES[c] %@", postcodeRegex)
    return postcodePredicate.evaluate(with: self)
  }
  
  /// All my own work!
  func lastPathComponent() -> String {
    (self as NSString).lastPathComponent
  }
  
  
  /// Hats off to ChatGPT.
  func replacingOccurrences(of target: String, with replacement: String, caseInsensitive: Bool) -> String {
    if caseInsensitive {
      let regex = try! NSRegularExpression(pattern: target, options: .caseInsensitive)
      return regex.stringByReplacingMatches(in: self, options: [], range: NSRange(0..<self.utf16.count), withTemplate: replacement)
    } else {
      return self.replacingOccurrences(of: target, with: replacement)
    }
  }

  /// I actually wrote this one myself.
  func removingPrefix(_ prefix: String) -> String {
    if self.hasPrefix(prefix) {
      return String(self.dropFirst(prefix.count))
    } else {
      return self
    }
  }
  
  /// Hats off to ChatGPT.
  func removingPunctuation() -> String {
    return self.components(separatedBy: .punctuationCharacters).joined()
  }
  
  func truncateAfter(_ c: Character, inclusive: Bool = false) -> String {
    if let index = self.firstIndex(of: c) {
      if index > self.startIndex {
        return inclusive ? String(self[..<index]) : String(self[...index])
      }
    }
    return self
  }
  
  func extractSubdomain() -> String {
    if let startRange = self.range(of: "www.") {
      
      // Get the substring between "www."
      let extracted = self[startRange.upperBound...]
      let fields = extracted.components(separatedBy: ".")
      return fields[0]
    } else if let startRange = self.range(of: "https://") {
      
      // Get the substring between "https://"
      let extracted = self[startRange.upperBound...]
      let fields = extracted.components(separatedBy: ".")
      return fields[0]
    }
    return self
  }
  
  
//  private func getCursorFromLinks(next: String) -> String {
//    if let range = next.range(of: "&cursor=") {
//      // Create a substring from the start of "&cursor" to the end of the string
//      let result = next[range.lowerBound...]
//      return (String(result)) // Output: "&cursor=123"
//    } else {
//      return ""
//    }
//  }
}
