//
//  TestData.swift
//  UKContractsTests
//
//  Created by Anthony Abbott on 19/10/2022.
//

import XCTest
@testable import UKContracts

struct TestData {
  
  static let fiveReleases = """
{ "uri": "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/Search?limit=5&publishedTo=2022-10-19T06:13:38+01:00", "version": "1.1", "extensions": [ "https://standard.open-contracting.org/profiles/eu/master/en/extension.json", "https://raw.githubusercontent.com/portaledcahn/ocds_tenderDatePublished_extension/master/extension.json", "https://raw.githubusercontent.com/open-contracting-extensions/ocds_budget_breakdown_extension/master/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_awards_datePublished_extension/main/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_partyDetails_vcse_extension/main/extension.json", "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_tender_suitability_extension/main/extension.json", "https://raw.githubusercontent.com/open-contracting-extensions/ocds_pagination_extension/master/extension.json" ], "publishedDate": "2022-10-18T23:38:01+01:00", "publisher": { "name": "Cabinet Office", "scheme": "GB-GOR", "uid": "D2", "uri": "https://www.gov.uk/government/organisations/cabinet-office" }, "license": "http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/", "publicationPolicy": "https://www.gov.uk/government/publications/open-contracting", "releases": [ { "ocid": "ocds-b5fd17-865a0cb5-a258-47d9-8ac9-d50b4256d023", "id": "8f71dee0-f9c9-4c10-9a77-3a7824eda6c0-581879", "language": "en", "date": "2022-10-18T23:38:01+01:00", "tag": [ "planning" ], "initiationType": "tender", "title": "4 yr maintenance service contract for 2x Auriga Xl Laser systems", "planning": { "milestones": [ { "id": "1", "title": "Engagement end date", "type": "engagement", "dueDate": "2022-10-28T23:59:59+01:00" } ], "documents": [ { "id": "1", "documentType": "marketEngagementNotice", "description": "Early engagement notice on Contracts Finder", "url": "https://www.contractsfinder.service.gov.uk/Notice/8f71dee0-f9c9-4c10-9a77-3a7824eda6c0", "datePublished": "2022-10-18T23:38:01+01:00", "format": "text/html", "language": "en" }, { "id": "2", "description": "Specification", "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/47163b2a-35f5-4246-8cf3-8908086137fc", "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document" } ] }, "tender": { "id": "CF-1137000D0O000000rwimUAA", "title": "4 yr maintenance service contract for 2x Auriga Xl Laser systems", "description": "4 yr maintenance service contract for 2x Auriga Xl Laser systems. Comprehensive total care and 2 service visits per year", "status": "planning", "classification": { "scheme": "CPV", "id": "50420000", "description": "Repair and maintenance services of medical and surgical equipment" }, "items": [ { "id": "1", "deliveryAddresses": [ { "region": "London", "countryName": "United Kingdom" } ] } ], "suitability": { "sme": false, "vcse": false }, "mainProcurementCategory": "services" }, "parties": [ { "id": "GB-CFS-209280", "name": "King's College Trust", "identifier": { "legalName": "King's College Trust" }, "address": { "streetAddress": "Denmark Hill", "locality": "London", "postalCode": "SE5 9RS", "countryName": "GB" }, "contactPoint": { "name": "Zaneta Kubacka", "email": "zaneta.kubacka@nhs.net" }, "roles": [ "buyer" ] } ], "buyer": { "id": "GB-CFS-209280", "name": "King's College Trust" } }, { "ocid": "ocds-b5fd17-8b6fcbcc-6fcc-4a04-a1bd-704d0ca586b3", "id": "7a1db8eb-7fa0-44d8-b47f-59b56dd92839-581877", "language": "en", "date": "2022-10-18T23:12:38+01:00", "tag": [ "tender" ], "initiationType": "tender", "tender": { "id": "NICE_BNF_S&D22", "title": "BNF Storage and Distribution", "description": "NICE is responsible for the provision of prescribing information to healthcare professionals working within the English NHS. This comes in the form of 2 print publications; the British National Formulary (BNF) and the British National Formulary for Children (BNFC). The BNF Volumes are distributed annually across the English NHS and other eligible prescriber groups. rrThe Storage and Distribution Provider will be responsible for:rr•tTaking delivery of, storing, and distributing the BNF Volumes to eligible healthcare professionals in England;r•tTaking delivery of, storing, and distributing the bulk order of BNF Volumes to a warehouse location for each of the UK devolved administrations;r•tProviding a service to manage enquiries from customers regarding distribution of the BNF Volumes;r•tLiaising with the Mailing Database Provider that manages the mailing database for the BNF Volumes, which includes all NHS staff who meet the eligibility criteria. [The Mailing Database Provider is the point of contact for eligibility criteria and customer data collation and will provide updated mailing lists.] r•tStorage and re-distribution of any returned BNF Volumes in between annual distributions in order to satisfy ad-hoc orders.", "datePublished": "2022-10-18T23:12:38+01:00", "status": "active", "classification": { "scheme": "CPV", "id": "64113000", "description": "Postal services related to parcels" }, "items": [ { "id": "1", "deliveryAddresses": [ { "region": "North West", "countryName": "United Kingdom" } ] } ], "minValue": { "amount": 322000, "currency": "GBP" }, "value": { "amount": 522000, "currency": "GBP" }, "procurementMethod": "open", "procurementMethodDetails": "Open procedure (above threshold)", "tenderPeriod": { "endDate": "2022-11-23T23:59:59Z" }, "contractPeriod": { "startDate": "2023-04-01T00:00:00+01:00", "endDate": "2026-03-31T23:59:59+01:00" }, "suitability": { "sme": true, "vcse": false }, "mainProcurementCategory": "services", "documents": [ { "id": "1", "documentType": "tenderNotice", "description": "Opportunity notice on Contracts Finder", "url": "https://www.contractsfinder.service.gov.uk/Notice/7a1db8eb-7fa0-44d8-b47f-59b56dd92839", "datePublished": "2022-10-18T23:12:38+01:00", "format": "text/html", "language": "en" }, { "id": "2", "documentType": "biddingDocuments", "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/787beca3-0fa4-4a96-a23f-04b8f0337d3a", "format": "application/zip" } ] }, "parties": [ { "id": "GB-GOR-PB474", "name": "National Institute For Health And Care Excellence", "identifier": { "legalName": "National Institute For Health And Care Excellence", "scheme": "GB-GOR", "id": "PB474" }, "address": { "streetAddress": "Level 1 City Tower", "locality": "Manchester", "postalCode": "M14BT", "countryName": "United Kingdom" }, "contactPoint": { "name": "Irene Walker", "email": "irene.walker@nice.org.uk", "telephone": "0161 870 3198" }, "roles": [ "buyer" ] } ], "buyer": { "id": "GB-GOR-PB474", "name": "National Institute For Health And Care Excellence" } }, { "ocid": "ocds-b5fd17-924994d3-b65c-49e4-8850-5c32fe2bf031", "id": "08442d90-cc9b-4dd3-861f-0ec30c3ceb7e-581878", "language": "en", "date": "2022-10-18T23:05:06+01:00", "tag": [ "tender" ], "initiationType": "tender", "tender": { "id": "IT-100-3785-PQ0382", "title": "PQ0382 - Estate Agency Services for First Homes Allocation at Perry Barr Residential Scheme (PBRS)", "description": "The Council requires a supplier for the provision of estate agency services to support the sales and marketing of 49. No. First Homes units at Plot 9 of the Perry Barr Residential Scheme (PBRS).r r First Homes is a government-backed scheme designed to help eligible first-time-buyers onto the property ladder, by offering homes at a discount of 30% compared to the market value. The discount will apply in perpetuity meaning that generations of new buyers and the local community will benefit from affordable housing. Further information is available on the dedicated weblink - https://www.gov.uk/first-homes-schemer r The 49 First Homes residential units comprise a mixture of 1- and 2-bedroom apartments located in two of the four detached blocks of 213 no. apartments within Plot 9 - the First Homes units will be located on the 4th and 6th floor of these blocks overlooking the newly constructed public realm. The Plot will benefit from extensive communal areas and 19 no. dedicated courtyards car parking spaces (not offered for sale with the First Homes units). The balance of the units is proposed to be sold with the support of a development partner in 2023 in line with the completion of the public realm works and plot construction works.r r The sale of the First Homes units is a pilot initiative and is time-sensitive due to a requirement of the funding conditions for sale completion of units by Friday 31 March 2023. r r The successful provider will be required to deliver the services detailed in the attached contract and summarised as the service requirements below: r r o Prepare and issue a Marketing and PR strategy;r o Review and preparation of marketing collateral to support sale process;r o Provision of informal advice to support i) preparation of unrestricted pedestrian access into Plot 9; ii) potential for fit out of show home units; and iii) ground floor sales office (if applicable);r o Marketing and advertising of proposed First Homes units for sale including the production of marketing material and all advertising;r o Negotiation of the sales price from an Agreed Price List of target prices;r o Assessment of buyer eligibility to the First Home units and certification and warranting of such eligibility to Birmingham City Council;r o Support purchaser options with in-house mortgage and financial adviser services on basis that any lenders will be institutions authorised by the Financial Conduct Authority pursuant to the Financial Services and Markets Act 2000 and that the ability of eligible purchasers to consult an independent financial and/or legal adviser (sample application form attached);r o Manage and update both the Buyer and Birmingham City Council from reservation through to sales completion;r o Monitoring progress of the sale including population of First Homes documents where applicable, liaising with Birmingham City Council (and Avison Young as required);r o Working with Birmingham City Council ...rrAdditional information: rIf you are interested in tendering please click on the following link to access Birmingham City Council's tender Portal.rrDelivery NotesrrBirminghamrrIs a Recurrent Procurement Type? : No", "datePublished": "2022-10-18T23:05:06+01:00", "status": "active", "classification": { "scheme": "CPV", "id": "70123100", "description": "Sale of residential real estate" }, "additionalClassifications": [ { "scheme": "CPV", "id": "70123000", "description": "Sale of real estate" }, { "scheme": "CPV", "id": "79342000", "description": "Marketing services" }, { "scheme": "CPV", "id": "70120000", "description": "Buying and selling of real estate" }, { "scheme": "CPV", "id": "79416000", "description": "Public relations services" }, { "scheme": "CPV", "id": "79413000", "description": "Marketing management consultancy services" }, { "scheme": "CPV", "id": "79416100", "description": "Public relations management services" }, { "scheme": "CPV", "id": "79340000", "description": "Advertising and marketing services" }, { "scheme": "CPV", "id": "70000000", "description": "Real estate services" }, { "scheme": "CPV", "id": "79416200", "description": "Public relations consultancy services" } ], "items": [ { "id": "1", "deliveryAddresses": [ { "postalCode": "B4 7DJ" }, { "region": "West Midlands", "countryName": "United Kingdom" } ] } ], "procurementMethodDetails": "Other - ", "tenderPeriod": { "endDate": "2022-11-04T23:59:59Z" }, "contractPeriod": { "startDate": "2022-11-16T00:00:00Z", "endDate": "2023-03-31T23:59:59+01:00" }, "suitability": { "sme": true, "vcse": false }, "mainProcurementCategory": "services", "documents": [ { "id": "1", "documentType": "tenderNotice", "description": "Opportunity notice on Contracts Finder", "url": "https://www.contractsfinder.service.gov.uk/Notice/08442d90-cc9b-4dd3-861f-0ec30c3ceb7e", "datePublished": "2022-10-18T23:05:06+01:00", "format": "text/html", "language": "en" }, { "id": "2", "description": "Additional information on how to apply for this contract", "url": "https://in-tendhost.co.uk/birminghamcc/aspx/" } ] }, "parties": [ { "id": "GB-CFS-43899", "name": "Birmingham City Council", "identifier": { "legalName": "Birmingham City Council" }, "address": { "streetAddress": "1 Lancaster Circus, Birmingham", "locality": "West Midlands", "postalCode": "B4 7DJ", "countryName": "United Kingdom" }, "contactPoint": { "name": "Charlie Short", "email": "charlie.short@birmingham.gov.uk", "telephone": "0121 464 0099" }, "roles": [ "buyer" ] } ], "buyer": { "id": "GB-CFS-43899", "name": "Birmingham City Council" } }, { "ocid": "ocds-b5fd17-192a0c83-3f76-4b96-a3e6-1d3cb789473a", "id": "a952e2dc-6170-41c6-8d8d-50927dfbea18-581876", "language": "en", "date": "2022-10-18T20:32:40+01:00", "tag": [ "award" ], "initiationType": "tender", "tender": { "id": "GMPTE001-DN622483-37265506", "title": "Ref 0217/20220801: October 2022 Bus Tenders (Tranche 3)", "description": "Contract Awards notice for October 2022 Bus Tenders (Tranche 3), tendered under the TfGM Subsidised Bus Services Dynamic Purchasing SystemrrAdditional information: rPricing is per annum", "status": "complete", "classification": { "scheme": "CPV", "id": "60100000", "description": "Road transport services" }, "items": [ { "id": "1", "deliveryAddresses": [ { "region": "England", "countryName": "United Kingdom" } ] } ], "procurementMethodDetails": "Other - ", "tenderPeriod": { "endDate": "2022-08-22T23:59:59+01:00" }, "contractPeriod": { "startDate": "2022-10-30T00:00:00+01:00", "endDate": "2025-01-11T23:59:59Z" }, "suitability": { "sme": true, "vcse": false }, "mainProcurementCategory": "services" }, "parties": [ { "id": "GB-CFS-75840", "name": "Transport for Greater Manchester", "identifier": { "legalName": "Transport for Greater Manchester" }, "address": { "streetAddress": "Transport for Greater Manchester, 2, Piccadilly Place,", "locality": "Manchester", "postalCode": "M1 3BG", "countryName": "United Kingdom" }, "contactPoint": { "email": "procurement@tfgm.com" }, "details": { "url": "http://www.tfgm.com" }, "roles": [ "buyer" ] }, { "id": "GB-CFS-224451", "name": "Diamond Bus North West", "identifier": { "legalName": "Diamond Bus North West" }, "address": { "streetAddress": "Weston Street, Bolton, Greater Manchester, BL3 2AW" }, "details": { "scale": "large", "vcse": false }, "roles": [ "supplier" ] }, { "id": "GB-CFS-224395", "name": "Nexus Move Ltd", "identifier": { "legalName": "Nexus Move Ltd" }, "address": { "streetAddress": "22 Old Street, Ashton-under-Lyne, Lancashire, OL6 6LB" }, "details": { "scale": "large", "vcse": false }, "roles": [ "supplier" ] }, { "id": "GB-CFS-28378", "name": "Stagecoach Manchester", "identifier": { "legalName": "Stagecoach Manchester" }, "address": { "streetAddress": "Head Office, Hyde Road, Ardwick, Manchester, Greater Manchester, M12 6JS" }, "details": { "scale": "large", "vcse": false }, "roles": [ "supplier" ] }, { "id": "GB-CFS-224529", "name": "Stotts Tours (Oldham) Ltd", "identifier": { "legalName": "Stotts Tours (Oldham) Ltd" }, "address": { "streetAddress": "144 Lees Road, Oldham, Greater Manchester, OL3 6ED" }, "details": { "scale": "large", "vcse": false }, "roles": [ "supplier" ] } ], "buyer": { "id": "GB-CFS-75840", "name": "Transport for Greater Manchester" }, "awards": [ { "id": "ocds-b5fd17-192a0c83-3f76-4b96-a3e6-1d3cb789473a-1", "status": "active", "date": "2022-09-07T00:00:00+01:00", "datePublished": "2022-10-18T20:32:40+01:00", "value": { "amount": 1983706, "currency": "GBP" }, "suppliers": [ { "id": "GB-CFS-224451", "name": "Diamond Bus North West" }, { "id": "GB-CFS-224395", "name": "Nexus Move Ltd" }, { "id": "GB-CFS-28378", "name": "Stagecoach Manchester" }, { "id": "GB-CFS-224529", "name": "Stotts Tours (Oldham) Ltd" } ], "contractPeriod": { "startDate": "2022-10-30T00:00:00+01:00", "endDate": "2025-01-11T23:59:59Z" }, "description": "Diamond Bus North West: Contracts - 2108 / 2001 / 2050rTotal Award Price - £980,290rrNexus Move Ltd: Contracts - 1115 / 1127rTotal Award Price - £368,000rrStagecoach Manchester: Contracts - 2104rTotal Award Price - £315,552rrStotts Tours (Oldham) Ltd: Contracts - 1150 / 1162rTotal Award Price - 319,867", "documents": [ { "id": "1", "documentType": "awardNotice", "description": "Awarded contract notice on Contracts Finder", "url": "https://www.contractsfinder.service.gov.uk/Notice/a952e2dc-6170-41c6-8d8d-50927dfbea18", "datePublished": "2022-10-18T20:32:40+01:00", "format": "text/html", "language": "en" } ] } ] }, { "ocid": "ocds-b5fd17-08405a57-6921-48b5-ad30-1d83c8df9e9b", "id": "5d9025d8-8fe5-444b-ab32-fc6abf12af58-581875", "language": "en", "date": "2022-10-18T20:16:23+01:00", "tag": [ "award" ], "initiationType": "tender", "tender": { "id": "GMPTE001-DN622480-48936670", "title": "Ref 0216/20220728: October 2022 Bus Tenders (Tranche 2)", "description": "Contract Awards notice for October 2022 Bus Tenders (Tranche 2), tendered under the TfGM Subsidised Bus Services Dynamic Purchasing SystemrrAdditional information: rPricing is per annum", "status": "complete", "classification": { "scheme": "CPV", "id": "60100000", "description": "Road transport services" }, "items": [ { "id": "1", "deliveryAddresses": [ { "region": "England", "countryName": "United Kingdom" } ] } ], "procurementMethodDetails": "Other - ", "tenderPeriod": { "endDate": "2022-08-19T23:59:59+01:00" }, "contractPeriod": { "startDate": "2022-10-30T00:00:00+01:00", "endDate": "2024-05-18T23:59:59+01:00" }, "suitability": { "sme": true, "vcse": false }, "mainProcurementCategory": "services" }, "parties": [ { "id": "GB-CFS-75840", "name": "Transport for Greater Manchester", "identifier": { "legalName": "Transport for Greater Manchester" }, "address": { "streetAddress": "Transport for Greater Manchester, 2, Piccadilly Place,", "locality": "Manchester", "postalCode": "M1 3BG", "countryName": "United Kingdom" }, "contactPoint": { "email": "procurement@tfgm.com" }, "details": { "url": "http://www.tfgm.com" }, "roles": [ "buyer" ] }, { "id": "GB-CFS-224604", "name": "First Manchester Limited", "identifier": { "legalName": "First Manchester Limited" }, "address": { "streetAddress": "Wallshaw Street, Oldham, Greater Manchester, OL1 3TR" }, "details": { "scale": "large", "vcse": false }, "roles": [ "supplier" ] }, { "id": "GB-CFS-224526", "name": "Go North West", "identifier": { "legalName": "Go North West" }, "address": { "streetAddress": "Boyle Street, Manchester, Greater Manchester, M8 8UT" }, "details": { "scale": "large", "vcse": false }, "roles": [ "supplier" ] }, { "id": "GB-CFS-28378", "name": "Stagecoach Manchester", "identifier": { "legalName": "Stagecoach Manchester" }, "address": { "streetAddress": "Head Office, Hyde Road, Ardwick, Manchester, Greater Manchester, M12 6JS" }, "details": { "scale": "large", "vcse": false }, "roles": [ "supplier" ] }, { "id": "GB-CFS-224529", "name": "Stotts Tours (Oldham) Ltd", "identifier": { "legalName": "Stotts Tours (Oldham) Ltd" }, "address": { "streetAddress": "144 Lees Road, Oldham, Greater Manchester, OL3 6ED" }, "details": { "scale": "large", "vcse": false }, "roles": [ "supplier" ] } ], "buyer": { "id": "GB-CFS-75840", "name": "Transport for Greater Manchester" }, "awards": [ { "id": "ocds-b5fd17-08405a57-6921-48b5-ad30-1d83c8df9e9b-1", "status": "active", "date": "2022-09-07T00:00:00+01:00", "datePublished": "2022-10-18T20:16:23+01:00", "value": { "amount": 2564782, "currency": "GBP" }, "suppliers": [ { "id": "GB-CFS-224604", "name": "First Manchester Limited" }, { "id": "GB-CFS-224526", "name": "Go North West" }, { "id": "GB-CFS-28378", "name": "Stagecoach Manchester" }, { "id": "GB-CFS-224529", "name": "Stotts Tours (Oldham) Ltd" } ], "contractPeriod": { "startDate": "2022-10-30T00:00:00+01:00", "endDate": "2024-05-18T23:59:59+01:00" }, "description": "First Manchester Limited: Contracts - 1230 / 2200 / 2201 / 1208 / 2202rTotal Award Price - £1,672,486rrGo North West: Contracts - 1481 / 2250rTotal Award Price - £141,413rrStagecoach Manchester: Contract - 1213rTotal award price - £425,483rrStotts Tours (Oldham) Ltd: Contracts - 1200 / 1210rTotal Award Price - £325,400", "documents": [ { "id": "1", "documentType": "awardNotice", "description": "Awarded contract notice on Contracts Finder", "url": "https://www.contractsfinder.service.gov.uk/Notice/5d9025d8-8fe5-444b-ab32-fc6abf12af58", "datePublished": "2022-10-18T20:16:23+01:00", "format": "text/html", "language": "en" } ] } ] } ], "links": { "next": "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/Search?limit=5&publishedTo=2022-10-19T06:13:38+01:00&cursor=cHVibGlzaGVkVG89MjAyMi0xMC0xOVQwNjoxMzozOCswMTowMHxsaW1pdD01fG5leHRDdXJzb3I9NDgwNDA2" }
}
"""
  /// Converts the test JSON string into data
  static let fiveReleasesData = Data(TestData.fiveReleases.utf8)
  
} // struct TestData