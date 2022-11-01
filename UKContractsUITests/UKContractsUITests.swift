//
//  UKContractsUITests.swift
//  UKContractsUITests
//
//  Created by Anthony Abbott on 18/10/2022.
//

import XCTest
@testable import UKContracts

final class UKContractsUITests: XCTestCase {
  
  func test_SelectAwards() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    let button = app.buttons["Search"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    /// We're on the contract list, select a contract and tap it
    let staticTexts = app.descendants(matching: .staticText)
    let releaseText = staticTexts["0-19 Children's Public Health Nursing Service"]
    XCTAssertNotNil(releaseText)
    releaseText.tap()
    
    /// We're now on the contract details. There should be three buttons, award, parties and tenders
    let contractDetailButtons = app.descendants(matching: .button)
    let contractDetailTexts   = app.descendants(matching: .staticText)
    
    XCTAssertEqual(contractDetailButtons.count, 6)
    XCTAssertEqual(contractDetailTexts.count, 22)
    
    let awardsButton = app.buttons["Awards"]
    XCTAssertTrue(awardsButton.exists)
    awardsButton.tap()
    
    let awardsTitle     = app.staticTexts["Awards"]
    let awardsDetail    = app.staticTexts["Id: ocds-b5fd17-d0f18f36-c88c-4885-bcc2-042dcfef9b7d-1"]
  
    XCTAssertNotNil(awardsTitle)
    XCTAssertNotNil(awardsDetail)
    
  } // test_SelectAwards
  
  func test_SelectParties() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    let button = app.buttons["Search"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    /// We're on the contract list, select a contract and tap it
    let staticTexts = app.descendants(matching: .staticText)
    let releaseText = staticTexts["0-19 Children's Public Health Nursing Service"]
    XCTAssertNotNil(releaseText)
    releaseText.tap()
    
    /// We're now on the contract details. There should be three buttons, award, parties and tenders
    let contractDetailButtons = app.descendants(matching: .button)
    let contractDetailTexts   = app.descendants(matching: .staticText)
    
    XCTAssertEqual(contractDetailButtons.count, 6)
    XCTAssertEqual(contractDetailTexts.count, 22)
    
    let partiesButton = app.buttons["Parties"]
    XCTAssertTrue(partiesButton.exists)
    partiesButton.tap()
    
    let partiesTitle     = app.staticTexts["Parties"]
    let partiesDetail    = app.staticTexts["Buyer: Rotherham Metropolitan Borough Council"]
    let partiesWebButton = app.buttons["Website"]
    
    
    XCTAssertNotNil(partiesTitle)
    XCTAssertNotNil(partiesDetail)
    XCTAssertNotNil(partiesWebButton)
    
  } // test_SelectParties
  
  func test_SelectTender() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    let button = app.buttons["Search"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    /// We're on the contract list, select a contract and tap it
    let staticTexts = app.descendants(matching: .staticText)
    let releaseText = staticTexts["0-19 Children's Public Health Nursing Service"]
    XCTAssertNotNil(releaseText)
    releaseText.tap()
    
    /// We're now on the contract details. There should be three buttons, award, parties and tenders
    let contractDetailButtons = app.descendants(matching: .button)
    let contractDetailTexts   = app.descendants(matching: .staticText)
    
    XCTAssertEqual(contractDetailButtons.count, 6)
    XCTAssertEqual(contractDetailTexts.count, 22)
    
    let tenderButton = app.buttons["Tender"]
    XCTAssertTrue(tenderButton.exists)
    tenderButton.tap()
    
    let tenderTitle     = app.staticTexts["Tender"]
    let tenderDetail    = app.staticTexts["0-19 Children's Public Health Nursing Service"]
    let tenderWebButton = app.buttons["85000000"]
    
    
    XCTAssertNotNil(tenderTitle)
    XCTAssertNotNil(tenderDetail)
    XCTAssertNotNil(tenderWebButton)
    
  } // test_SelectTender
  
  
  
  func test_UserPressesSearchButtonAndThenSelectsRow() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    let button = app.buttons["Search"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    /// Date sort button
    if app.buttons["Date"].waitForExistence(timeout: 5) {  }
    XCTAssert(app.buttons["Date"].exists)
    
    /// Check that there are more that two buttons
    XCTAssertGreaterThan(app.buttons.count,2)
    
    // Query for all buttons
    let buttonQuery = app.descendants(matching: .button)
    
    // We know that we have three or more buttons
    let releaseButton = buttonQuery.element(boundBy: 2)
    XCTAssertTrue(releaseButton.exists)
    releaseButton.tap()
  } // test_UserPressesSearchButtonAndThenSelectsRow
  
  func test_UserPressesSettingsButtonCheckDatePickers() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    let button = app.buttons["Settings"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    /// Check that there are two datepickers
    XCTAssertEqual(app.datePickers.count, 2)
  } // test_UserPressesSettingsButtonCheckStaticTexts
  
  func test_UserPressesSettingsButtonCheckButtons() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    let button = app.buttons["Settings"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    /// Check the buttons on the screen
    XCTAssertEqual(app.buttons.count, 9)
    
    /// The data should sort and the button label change to "Search"
    if app.buttons["Search"].waitForExistence(timeout: 5) {
      XCTAssert(app.buttons["Search"].exists)
    }
    
    /// The data should sort and the button label change to "Settings"
    if app.buttons["Settings"].waitForExistence(timeout: 5) {
      XCTAssert(app.buttons["Settings"].exists)
    }
    
    /// The data should sort and the button label change to "Done"
    if app.buttons["Done"].waitForExistence(timeout: 5) {
      XCTAssert(app.buttons["Done"].exists)
    }
    
    /// The data should sort and the button label change to "Date and Time Picker"
    if app.buttons["Date and Time Picker"].waitForExistence(timeout: 5) {
      XCTAssert(app.buttons["Date and Time Picker"].exists)
    }
  } // test_UserPressesSettingsButtonCheckStaticTexts
  
  func test_UserPressesSettingsButtonCheckStaticTexts() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    let button = app.buttons["Settings"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    /// Check the static text
    XCTAssertEqual(app.staticTexts.count, 14)
    
    // Check that the Settings text field exists
    XCTAssertEqual(app.staticTexts["Settings"].label, "Settings")
    
    // Check that the CONTRACT STATUS text field exists
    XCTAssertEqual(app.staticTexts["CONTRACT STATUS"].label, "CONTRACT STATUS")
    
    // Check that the CONTRACT TYPE text field exists
    XCTAssertEqual(app.staticTexts["CONTRACT TYPE"].label, "CONTRACT TYPE")
    
    // Check that the CONTRACT DATES text field exists
    XCTAssertEqual(app.staticTexts["CONTRACT DATES"].label, "CONTRACT DATES")
    
    // Check that the Published from date text field exists
    XCTAssertEqual(app.staticTexts["Published from date"].label, "Published from date")
    
    // Check that the Published to date text field exists
    XCTAssertEqual(app.staticTexts["Published to date"].label, "Published to date")
    
    // Check that the Awarded text field exists
    XCTAssertEqual(app.staticTexts["Awarded"].label, "Awarded")
    
    // Check that the Implmentation text field exists
    XCTAssertEqual(app.staticTexts["Implmentation"].label, "Implmentation")
    
    // Check that the Planning text field exists
    XCTAssertEqual(app.staticTexts["Planning"].label, "Planning")
    
    // Check that the Tender text field exists
    XCTAssertEqual(app.staticTexts["Tender"].label, "Tender")
    
    // Check that the Small and Medium Enterprises (SME) text field exists
    XCTAssertEqual(app.staticTexts["Small and Medium Enterprises (SME)"].label, "Small and Medium Enterprises (SME)")
    
    // Check that the Voluntary and Community Organisations (VCO) text field exists
    XCTAssertEqual(app.staticTexts["Voluntary and Community Organisations (VCO)"].label, "Voluntary and Community Organisations (VCO)")
  } // test_UserPressesSettingsButtonCheckStaticTexts
  
  
  func test_UserPressesSearchButtonAndThenTheSortButton() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    /// User taps the search button
    let button = app.buttons["Search"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    /// Check the buttons on the screen
    XCTAssertEqual(app.buttons.count, 2)
    
    /// Check for the search button
    if app.buttons["Return"].waitForExistence(timeout: 5) {
      XCTAssert(app.buttons["Return"].exists)
    }
    
    /// Check for the search button
    if app.buttons["Date"].waitForExistence(timeout: 5) {
      XCTAssert(app.buttons["Date"].exists)
    }
    
    /// Tap the sort button
    let sortButton = app.buttons["Date"]
    XCTAssertTrue(sortButton.exists)
    sortButton.tap()
    
    /// The data should sort and the button label change to "A-Z"
    if app.buttons["A-Z"].waitForExistence(timeout: 5) {
      XCTAssert(app.buttons["A-Z"].exists)
    }
  } // test_UserPressesSearchButtonAndThenTheSortButton
  
  func test_UserPressesSearchButtonAndThenTheBackButton() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    /// User taps the search button
    let button = app.buttons["Search"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    /// Check the buttons on the screen
    XCTAssertEqual(app.buttons.count, 2)
    
    /// Check for the search button
    if app.buttons["Return"].waitForExistence(timeout: 5) {
      XCTAssert(app.buttons["Return"].exists)
    }
    
    /// Check for the search button
    if app.buttons["Date"].waitForExistence(timeout: 5) {
      XCTAssert(app.buttons["Date"].exists)
    }
  } // test_UserPressesSearchButtonAndThenTheBackButton
  
  func test_UserPressesSearchButton() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    let button = app.buttons["Search"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    /// Check the buttons on the screen
    XCTAssertEqual(app.buttons.count, 2)
    
    /// Check for the search button
    if app.buttons["Date"].waitForExistence(timeout: 5) {
      XCTAssert(app.buttons["Date"].exists)
    }
  } // test_UserPressesSearchButton
  
  func test_StaticTextCountEqualsTwo() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    /// Check that there are two text fields
    XCTAssertEqual(app.staticTexts.count, 2)
  } // test_StaticTextCountEqualsTwo
  
  func test_TitleStaticText() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    /// Check the title label
    XCTAssertEqual(app.staticTexts["Contract Finder"].label, "Contract Finder")
  } // test_TitleStaticText
  
  func test_SearchMessage() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    /// Check the search message text
    
    //TODO: - This test isn't compiling
    //    XCTAssertEqual(app.staticTexts[Constants.searchMessage].label, Constants.searchMessage)
  } // test_SearchMessage
  
  func test_TwoButtonExactlyExists() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    /// Check that there are two buttons
    XCTAssertEqual(app.buttons.count, 2)
  } // test_TwoButtonExactlyExists
  
  func test_SearchButtonExists() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    /// Check for the search button
    XCTAssert(app.buttons["Search"].exists)
  } // test_SearchButtonExists
  
  func test_SettingsButtonExists() throws {
    //Launch the application
    let app = XCUIApplication()
    app.launch()
    
    /// Check for the settings button
    XCTAssert(app.buttons["Settings"].exists)
  } // test_SettingsButtonExists
  
  
  
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testExample() throws {
    // UI tests must launch the application that they test.
    let app = XCUIApplication()
    app.launch()
    
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }
  
  func testLaunchPerformance() throws {
    if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
      // This measures how long it takes to launch your application.
      measure(metrics: [XCTApplicationLaunchMetric()]) {
        XCUIApplication().launch()
      }
    }
  }
}
