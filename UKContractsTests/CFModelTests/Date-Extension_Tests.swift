//
//  Date-Extension_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 22/10/2022.
//

import XCTest
@testable import UKContracts

final class Date_Extension_Tests: XCTestCase {
  
  func test_dates() throws {
    var dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd-MM-yyyy hh:mm:ss"
    //dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
    
    let smallerDate = dateFormatter.date(from: "01-01-2012 00:05:01")!
    let biggerDate  = dateFormatter.date(from: "03-12-2019 09:30:01")!
    //
    //    print(smallerDate.fullDistance(from: biggerDate, resultIn: .day))       // Optional(2893)
    //    print(biggerDate.fullDistance(from: smallerDate, resultIn: .day))       // Optional(-2893)
    //    print(smallerDate.fullDistance(from: biggerDate, resultIn: .year))      // Optional(7)
    //    print(biggerDate.fullDistance(from: smallerDate, resultIn: .year))      // Optional(7)
    //    print(smallerDate.fullDistance(from: biggerDate, resultIn: .hour))      // Optional(69441)
    //    print(biggerDate.fullDistance(from: smallerDate, resultIn: .hour))      // Optional(-69441)
    
    //    print(smallerDate.distance(from: biggerDate, only: .day))               // -2
    //    print(biggerDate.distance(from: smallerDate, only: .day))               // 2
    //    print(smallerDate.distance(from: biggerDate, only: .year))              // -7
    //    print(biggerDate.distance(from: smallerDate, only: .year))              // 7
    //    print(smallerDate.distance(from: biggerDate, only: .hour))              // -9
    //    print(biggerDate.distance(from: smallerDate, only: .hour))              // 9
    //
    //    print(smallerDate.hasSame(.day, as: biggerDate))                        // false
    //    print(biggerDate.hasSame(.second, as: smallerDate))                     // true
  } // func test_dates()
  
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
} // final class Date_Extension_Tests
