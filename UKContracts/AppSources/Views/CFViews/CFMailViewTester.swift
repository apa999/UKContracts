//
//  CFMailViewTester.swift
//  UKContracts
//
//  Created by Anthony Abbott on 27/10/2022.
//

import MessageUI
import SwiftUI
import UIKit

struct CFMailViewTester {
  
  /// Support for email
  @State var result: Result<MFMailComposeResult, Error>? = nil
  @State var isShowingMailView = false
  @State var recipients = "CFMailViewTester@me.com"
  @State var subject    = "CFMailViewTester - subject"
  
  var cfMailView : CFMailView?
  
  mutating func test() -> CFMailView {
    CFMailView(isShowing: self.$isShowingMailView,
               result: self.$result,
               recipients: $recipients,
               subject: $subject)
  }
  
  
}
