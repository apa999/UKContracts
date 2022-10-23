//
//  Modifiers.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import SwiftUI

/// Modifies the status - setting colour and font size 
struct StatusModifier: ViewModifier {
  
  var status: String
  
  init(status: String) {
    self.status = status
  }
  
  func body(content: Content) -> some View {
    switch status {
      case "active"   : return Text("\(status)").font(.title2).foregroundColor(.red)
      case "complete" : return Text("\(status)").font(.title3).foregroundColor(.green)
      case "planned"  : return Text("\(status)").font(.title3).foregroundColor(.yellow)
      case "planning" : return Text("\(status)").font(.title3).foregroundColor(.blue)
      default: return Text("Unknown status - \(status)").font(.title3).foregroundColor(.blue)
    }
  }
}

extension View {
  func statusModifier(status: String) -> some View {
    self.modifier(StatusModifier(status: status))
  }
}
