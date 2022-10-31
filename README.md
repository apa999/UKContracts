# UKContracts

Introduction
UKContracts accesses contract information from the UK Government’s Contracts database, see: https://www.contractsfinder.service.gov.uk/Search.

Functionality:
  •	Search by contract stage (via Settings):
    o	Awarded
    o	Implementation
    o	Planning
    o	Tender
  •	By date range:
    o	From date
    o	To date
  •	By suitability
    o	VCO
    o	SME
  
  •	Filter results 
  •	External links to:
    o	Releases
    o	Tender information
    o	Documents
    o	Seller’s information
    o	CPV codes
  •	Additional functionality
    o	Telephone (not on simulator)
    o	Email (not on simulator)
    o	Add contacts

**Technical:
  •	iPhone only
  •	iOS 16+
  •	Portrait layout
  •	SwiftUI
  •	XCode Version 14.0.1 (14A400)
  •	Not tested on macOS**

**App Architiecture
This is app is designed using the industry standard MVVM pattern, which is typical for SwiftUI projects. The major components are:
• Model (struct)
• ViewModel (observable class)
• View - (structs) SwiftUI Views**

The ViewwModel is created on app launch and is passed to the View. The ViewModel creates the Model and publsihes so that it can be observed by the View.

Know issues
•	Xcode occasionally reports: “SwiftUI encountered an issue when pushing a NavigationLink. Please file a bug.” 
•	No Onboarding in this version

