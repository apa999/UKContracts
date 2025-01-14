//
//  JSONHelper.swift
//  CF0
//
//  Created by Anthony Abbott on 29/12/2024.
//

import Foundation

/**
 Saves JSON file to documents directory
 */
func saveJSONData<T: Encodable>(_ data: T, to fileName: String) {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted // Optional: Makes the JSON readable

    do {
        // Encode the data to JSON
        let jsonData = try encoder.encode(data)
        
        // Get the file URL in the documents directory
        let fileURL = try getDocumentsDirectory().appendingPathComponent(fileName)
        
        // Write the data to the file
        try jsonData.write(to: fileURL)
        
        print("JSON data saved successfully to \(fileURL.path)")
    } catch {
        print("Failed to save JSON data: \(error.localizedDescription)")
    }
}

/**
 Readcd JSON file from documents directory
 */
func readJSONData<T: Decodable>(from fileName: String, as type: T.Type) -> T? {
    do {
        // Get the file URL in the documents directory
        let fileURL = try getDocumentsDirectory().appendingPathComponent(fileName)
        
        // Check if the file exists
        guard FileManager.default.fileExists(atPath: fileURL.path) else {
            print("File \(fileName) does not exist.")
            return nil
        }
        
        // Read the data from the file
        let data = try Data(contentsOf: fileURL)
        
        // Decode the data to the specified type
        let decodedData = try JSONDecoder().decode(type, from: data)
        
        print("File \(fileURL.path)/\(fileName) loaded successfully.")
        return decodedData
    } catch {
        print("Failed to read JSON data: \(error.localizedDescription)")
        return nil
    }
}

// Helper Function to Get the Documents Directory URL
func getDocumentsDirectory() throws -> URL {
    guard let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
        throw NSError(domain: "FileManagerError", code: 1, userInfo: [NSLocalizedDescriptionKey: "Unable to find documents directory"])
    }
    return url
}

/**
 Load JSON file from Bundle
 */
func load<T: Decodable>(_ filename: String) -> T {
  let data: Data
  
  guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
  else {
    fatalError("Couldn't find \(filename) in main bundle.")
  }
  
  do {
    data = try Data(contentsOf: file)
  } catch {
    fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
  }
  
  do {
    let decoder = JSONDecoder()
    return try decoder.decode(T.self, from: data)
  } catch {
    fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
  }
}


struct JSONHelper {
  func decode<T: Codable>(_ data: Data) -> T {
    do {
      let decoder = JSONDecoder()
      return try decoder.decode(T.self, from: data)
    } catch {
      fatalError("Couldn't parse data as \(T.self):\n\(error)")
    }
    
  }
}
