//
//  CFViewModel-ModelExtension.swift
//  UKContracts
//
//  Created by Anthony Abbott on 22/10/2022.
//

import Foundation

extension CFViewModel {
  
 
  
  //MARK: - Public functions
  
  /// Builds the search string
  func buildSearchString()-> String {
    
    /**
     Example of valid search string
     "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/search?publishedFrom=2022-09-22T13:51:54Z&publishedTo=2022-10-22T13:53:35Z&stages=tender,award,planning,implementation"
     */
    
    var str = Constants.searchText
    
    /// Add the from and to dates
    var publishedFromDate = settings.publishedFromDate
    
    if publishedFromDate.distance(from: settings.publishedToDate, only: .minute) == 0 {
      
      var dateComponent  = DateComponents()
      dateComponent.day  = -1
      publishedFromDate  = Calendar.current.date(byAdding: dateComponent, to: publishedFromDate) ?? Date()
    }
    
    str += formatSearchDates(publishedFrom: publishedFromDate,
                             publishedTo: settings.publishedToDate)
    
    /// Add the stages
    let stage = Stage(tender: settings.tender,
                      award: settings.award,
                      implementation: settings.implmentation,
                      planning: settings.planning)
      
    str += formatStages(stage: stage)
    
    return str
  }
  
  //MARK: - Search Intents
  
  /// User has pressed search button
  func search(_ searchstr: String) {
    cfModel.search(searchstr)
  }
  
  /// User has pressed sort button
  func sort(_ sortType: CFModel.SortType) {
    cfModel.sort(sortType)
  }
  
 
  //MARK: - Public functions
  
  private func formatSearchDates(publishedFrom: Date, publishedTo: Date) -> String {
    var dateSearchString = ""
    
    let isoFormatter  = ISO8601DateFormatter()
    
    let publishedFromText = isoFormatter.string(from: publishedFrom)
    
    dateSearchString += "publishedFrom=\(publishedFromText)"
    
    let publishedToText   = isoFormatter.string(from: publishedTo)
    
    dateSearchString += "&publishedTo=\(publishedToText)"
    
    return dateSearchString
  } // private func formatSearchDates
  
  private func formatStages(stage: Stage) -> String {
    var stagesText = ""
    
    if stage.tender == true {
      stagesText += "&stages=tender"
    }
    
    if stage.award == true {
      stagesText = stagesText == "" ? "&stages=award" : "\(stagesText),award"
    }
    
    if stage.planning == true {
      stagesText = stagesText == "" ? "&stages=planning" : "\(stagesText),planning"
    }
    
    if stage.implementation == true {
      stagesText = stagesText == "" ? "&stages=implementation" : "\(stagesText),implementation"
    }
    
    return stagesText
  } // private func formatStages
  
} // extension CFViewModel
