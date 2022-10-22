//
//  CFModel-SearchOptions.swift
//  UKContracts
//
//  Created by Anthony Abbott on 22/10/2022.
//

import Foundation

struct SearchOptions
{
  var publishedTo     : Date!
  var publishedFrom   : Date!
  var stage           : Stage!
  var smeOnly         : Bool!
  var vcoOnly         : Bool!
  
  init(publishedTo: Date? = Date(), publishedFrom: Date? = Date(), stage: Stage, smeOnly: Bool, vcoOnly: Bool)
  {
    self.publishedFrom = publishedFrom
    self.publishedTo   = publishedTo
    self.stage         = stage
    self.smeOnly       = smeOnly
    self.vcoOnly       = vcoOnly
  }
} // struct SearchOptions()
