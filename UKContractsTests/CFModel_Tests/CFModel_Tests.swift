//
//  CFModel_Tests.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 18/10/2022.
//

import XCTest
@testable import UKContracts

final class CFModel_Tests: XCTestCase {
  

  @MainActor
  func test_searchStrAllOptionsTrue() throws {
    let sut               = CFViewModel()
    let publishedFromDate = TestHelpers.getDateFor("2022-10-21T13:49:07+0000")
    let publishedToDate   = TestHelpers.getDateFor("2022-10-21T14:49:07+0000")
    
    let settings = SettingsModel(award: true,
                                 implmentation: true,
                                 planning: true,
                                 tender: true,
                                 sme: true,
                                 vco: true,
                                 publishedFromDate: publishedFromDate!,
                                 publishedToDate: publishedToDate!,
                                 cpvFilteredString: "",
                                 selectedCPVs: Data(),
                                 searchedCPVs: Data())
    
    sut.settings = settings
    
    let searchString = sut.buildSearchString()
    XCTAssertEqual(searchString, "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?publishedFrom=2022-10-20T13:49:07Z&publishedTo=2022-10-21T14:49:07Z&stages=tender,award,planning,implementation")
  }
  
  @MainActor
  func test_searchStrAwardOnly() throws {
    let sut               = CFViewModel()
    let publishedFromDate = TestHelpers.getDateFor("2022-10-21T13:49:07+0000")
    let publishedToDate   = TestHelpers.getDateFor("2022-10-21T14:49:07+0000")
    
    let settings = SettingsModel(award: true,
                                 implmentation: false,
                                 planning: false,
                                 tender: false,
                                 sme: true,
                                 vco: true,
                                 publishedFromDate: publishedFromDate!,
                                 publishedToDate: publishedToDate!,
                                 cpvFilteredString: "",
                                 selectedCPVs: Data(),
                                 searchedCPVs: Data())
    
    sut.settings = settings
    
    let searchString = sut.buildSearchString()
    XCTAssertEqual(searchString, "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?publishedFrom=2022-10-20T13:49:07Z&publishedTo=2022-10-21T14:49:07Z&stages=award")
  }
  
  @MainActor
  func test_searchStrPlanningAndImplementation() throws {
    let sut               = CFViewModel()
    let publishedFromDate = TestHelpers.getDateFor("2022-10-21T13:49:07+0000")
    let publishedToDate   = TestHelpers.getDateFor("2022-10-21T14:49:07+0000")
    
    let settings = SettingsModel(award: false,
                                 implmentation: true,
                                 planning: true,
                                 tender: false,
                                 sme: true,
                                 vco: true,
                                 publishedFromDate: publishedFromDate!,
                                 publishedToDate: publishedToDate!,
                                 cpvFilteredString: "",
                                 selectedCPVs: Data(),
                                 searchedCPVs: Data())
    
    sut.settings = settings
    
    let searchString = sut.buildSearchString()
    XCTAssertEqual(searchString, "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?publishedFrom=2022-10-20T13:49:07Z&publishedTo=2022-10-21T14:49:07Z&stages=planning,implementation")
  }
  
  @MainActor
  func test_searchStrEqualDates() throws {
    let sut               = CFViewModel()
    let publishedFromDate = TestHelpers.getDateFor("2022-10-21T10:30:00+0000")
    let publishedToDate   = TestHelpers.getDateFor("2022-10-21T10:30:00+0000")
    
    let settings = SettingsModel(award: false,
                                 implmentation: false,
                                 planning: false,
                                 tender: true,
                                 sme: true,
                                 vco: true,
                                 publishedFromDate: publishedFromDate!,
                                 publishedToDate: publishedToDate!,
                                 cpvFilteredString: "",
                                 selectedCPVs: Data(),
                                 searchedCPVs: Data())
    
    sut.settings = settings
    
    let searchString = sut.buildSearchString()
    XCTAssertEqual(searchString, "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?publishedFrom=2022-10-20T10:30:00Z&publishedTo=2022-10-21T10:30:00Z&stages=tender")
  }
  
  func test_FilteringWith100()
  {
    var sut             = CFModel()
    let dummyDataLoader = DummyDataLoader()
    sut.cfSearch        = dummyDataLoader.load(data: TestData.hundredReleasesData)
    
    /// Searching for "Estate" should match none
    sut.search("Estate")
    XCTAssertEqual(sut.cfSearch.releases!.count, 0)
   
    /// Reload the 100 releases
    sut.cfSearch = dummyDataLoader.load(data: TestData.hundredReleasesData)
    
    /// Searching for "Estate" should match one
    sut.search("Glazing")
    XCTAssertEqual(sut.cfSearch.releases!.count, 1)
    
    /// Reload the 100 releases
    sut.cfSearch = dummyDataLoader.load(data: TestData.hundredReleasesData)
    
    /// Searching for "Estate" should match five
    sut.search("award")
    XCTAssertEqual(sut.cfSearch.releases!.count, 5)
    
    /// Reload the 100 releases
    sut.cfSearch = dummyDataLoader.load(data: TestData.hundredReleasesData)
    
    /// Searching for "pRoVisIOn" should match eleven (N.B. matches on provisioning as well)
    sut.search("pRoVisIOn")
    XCTAssertEqual(sut.cfSearch.releases!.count, 11)
  } //  func test_FilteringWith100()
  
  /// Tests sorting by release date
  func test_FilteringWith5()
  {
    var sut             = CFModel()
    let dummyDataLoader = DummyDataLoader()
    sut.cfSearch        = dummyDataLoader.load(data: TestData.fiveReleasesData)
    
//    TestHelpers.printReleases(sut.cfSearch.releases!)
    
    /// Searching for "Estate" should match two
    sut.search("Estate")
    XCTAssertEqual(sut.cfSearch.releases!.count, 1)
    XCTAssertEqual(sut.cfSearch.releases![0].tender.title, "PQ0382 - Estate Agency Services for First Homes Allocation at Perry Barr Residential Scheme (PBRS)")
    
    /// Reload the 5 releases
    sut.cfSearch = dummyDataLoader.load(data: TestData.fiveReleasesData)
    
    /// Searching for "Ref" should match one
    sut.search("Ref")
    XCTAssertEqual(sut.cfSearch.releases!.count, 2)
    XCTAssertEqual(sut.cfSearch.releases![0].tender.title, "Ref 0217/20220801: October 2022 Bus Tenders (Tranche 3)")
    XCTAssertEqual(sut.cfSearch.releases![1].tender.title, "Ref 0216/20220728: October 2022 Bus Tenders (Tranche 2)")
  }
  
  /// Tests sorting by release date
  func test_SortReleaseDateWithOneHundred()
  {
    /// Start the model
    var sut = CFModel()
    
    /// Load test releases
    let dummyDataLoader = DummyDataLoader()
    let cfSearch        = dummyDataLoader.load(data: TestData.hundredReleasesData)
    
    XCTAssertNotNil(cfSearch.releases)
    
    /// Assign the releases to the model
    sut.cfSearch = cfSearch
    XCTAssertNotNil(sut.cfSearch)
    
    /// Move us on to alpha
    sut.sort(status: .releaseDate)
    
    XCTAssertEqual(sut.cfSearch.releases![0].date,  TestHelpers.getDateFor("2022-10-22T09:01:26+0000"))
    XCTAssertEqual(sut.cfSearch.releases![10].date, TestHelpers.getDateFor("2022-10-21T18:44:28+0000"))
    XCTAssertEqual(sut.cfSearch.releases![20].date, TestHelpers.getDateFor("2022-10-21T16:55:03+0000"))
    XCTAssertEqual(sut.cfSearch.releases![30].date, TestHelpers.getDateFor("2022-10-21T16:45:36+0000"))
    XCTAssertEqual(sut.cfSearch.releases![40].date, TestHelpers.getDateFor("2022-10-21T16:18:07+0000"))
    XCTAssertEqual(sut.cfSearch.releases![50].date, TestHelpers.getDateFor("2022-10-21T16:04:45+0000"))
    XCTAssertEqual(sut.cfSearch.releases![60].date, TestHelpers.getDateFor("2022-10-21T15:42:04+0000"))
    XCTAssertEqual(sut.cfSearch.releases![70].date, TestHelpers.getDateFor("2022-10-21T15:28:06+0000"))
    XCTAssertEqual(sut.cfSearch.releases![80].date, TestHelpers.getDateFor("2022-10-21T15:16:30+0000"))
    XCTAssertEqual(sut.cfSearch.releases![90].date, TestHelpers.getDateFor("2022-10-21T15:00:04+0000"))
    XCTAssertEqual(sut.cfSearch.releases![99].date, TestHelpers.getDateFor("2022-10-21T14:49:07+0000"))
  }
  
  /// Tests sorting by title
  func test_SortAlphaWithOneHundred()
  {
    /// Start the model
    var sut = CFModel()
    
    /// Load test releases
    let dummyDataLoader = DummyDataLoader()
    let cfSearch        = dummyDataLoader.load(data: TestData.hundredReleasesData)
    
    XCTAssertNotNil(cfSearch.releases)
    
    /// Assign the releases to the model
    sut.cfSearch = cfSearch
    XCTAssertNotNil(sut.cfSearch)
    
    sut.sort(status: .alpha)
    
    XCTAssertEqual(sut.cfSearch.releases![0].tender.title, "2022-10-11 11:00 - QOC472 Ipswich to Doucecroft School, Colchester, Essex - AWARD")
    XCTAssertEqual(sut.cfSearch.releases![10].tender.title, "Barred and Advisory List")
    XCTAssertEqual(sut.cfSearch.releases![40].tender.title, "Juxtaposed Controls Services - Manned Freight Search")
    XCTAssertEqual(sut.cfSearch.releases![50].tender.title, "NUN - Armson Road - EA and QS Services - AWARD")
    XCTAssertEqual(sut.cfSearch.releases![60].tender.title, "PRJ1204 Dementia Navigation Service - City & Hackney")
    XCTAssertEqual(sut.cfSearch.releases![80].tender.title, "Species Conservation Strategies workshop design, facilitation and analysis")
    XCTAssertEqual(sut.cfSearch.releases![99].tender.title, "World Beneath Waves Exhibition- Design & Manage ITT")
  }
  
  
  /// Create an empty model and checks that the sort status in unsorted
  func test_SortStatusNextShouldRollThrough()
  {
    var sut = CFModel()
    
    XCTAssertEqual(sut.sortStatus, .unsorted)
    
    /// Starts unsorted - should be alpha
    sut.sortStatus.next()
    XCTAssertEqual(sut.sortStatus, .alpha)
    
    /// Is alpha, should move to releaseDate
    sut.sortStatus.next()
    XCTAssertEqual(sut.sortStatus, .releaseDate)
    
    /// Is release date, should move to alpha
    sut.sortStatus.next()
    XCTAssertEqual(sut.sortStatus, .alpha)
    
    /// Is alpha, should move to releaseDate
    sut.sortStatus.next()
    XCTAssertEqual(sut.sortStatus, .releaseDate)
  }
  
  
  /// Create an empty model and checks that the sort status in unsorted
  func test_SortStatusShouldBeUnsorted()
  {
    let sut = CFModel()
    
    XCTAssertEqual(sut.sortStatus, .unsorted)
  }
  
  /// Create an empty model and checks that the model status in unloaded
  func test_ModelStatusShouldBeUnloaded()
  {
    let sut = CFModel()
    
    XCTAssertEqual(sut.modelStatus, .unloaded)
  }
  
  /// Create an empty model
  func test_loadingUriShouldBeEmpty()
  {
    let sut = CFModel()
    
    XCTAssertEqual(sut.cfSearch.uri, "", "CFSearch.uri should be initialised to \"\".")
  }
  
  /// Loads the test data and checks the number of releases - should be one
  func test_loadingShouldBeOneRelease()
  {
    let dummyDataLoader = DummyDataLoader()
    let cfSearch        = dummyDataLoader.load(data: CFSearch.cfSearchTestData)
    
    XCTAssertNotNil(cfSearch.releases)
    
    XCTAssertEqual(cfSearch.releases?.count, 1)
  }
  
  /// Loads the test data and checks the number of releases - should be five
  func test_loadingShouldBeFiveRelease()
  {
    let dummyDataLoader = DummyDataLoader()
    let cfSearch        = dummyDataLoader.load(data: TestData.fiveReleasesData)
    
    XCTAssertNotNil(cfSearch.releases)
    
    XCTAssertEqual(cfSearch.releases?.count, 5)
  }
  
  func test_loadingShouldBeOneHundredRelease()
  {
    let dummyDataLoader = DummyDataLoader()
    let cfSearch        = dummyDataLoader.load(data: TestData.hundredReleasesData)
    
    XCTAssertNotNil(cfSearch.releases)
    
    XCTAssertEqual(cfSearch.releases?.count, 100)
  }
  
  /// Loads the test data and checks the formatted release date
  func test_loadingReleaseDateShouldBe()
  {
    let dummyDataLoader = DummyDataLoader()
    let cfSearch        = dummyDataLoader.load(data: CFSearch.cfSearchTestData)
    
    XCTAssertEqual(cfSearch.releases?[0].formattedDate, "Thu 19 May 2022, 17:08", "Formatted date is incorrect - expected \"Thu 19 May 2022, 17:08\", found: \"cfSearch.releases?[0].formattedDate\"")
  }
  
  
  
  
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  

  //TODO: -
  func testPerformanceExample() throws {
    // This is an example of a performance test case.
//    self.measure {
//      // Put the code you want to measure the time of here.
//    }
  }
  
}
