# UKContracts

Introduction
UKContracts accesses contract information from the UK Government’s contracts database, see: https://www.contractsfinder.service.gov.uk/Search.

The contract data is retrieved in JSON format and conforms to the Open Contracts Data Standard (OCDS) see: https://www.open-contracting.org/data-standard/


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
  •	XCode Version 14.0.1 (14A400)  xCode 13.0 compatible
  •	Not tested on macOS**

**App Architiecture
This is app is designed using the industry standard MVVM pattern, which is typical for SwiftUI projects. The major components are:
• Model (struct)
• ViewModel (observable class)
• View - (structs) SwiftUI Views**

The ViewModel is created on app launch and is passed to the View. The ViewModel creates the Model and publishes it so that it can be observed by the View.

Know issues
•	No Onboarding in this version

