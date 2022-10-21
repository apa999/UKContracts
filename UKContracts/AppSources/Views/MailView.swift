//
//  MailView.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

/*
 Usage:
 import SwiftUI
 import MessageUI
 
 struct ContentView: View {
 
 @State var result: Result<MFMailComposeResult, Error>? = nil
 @State var isShowingMailView = false
 
 var body: some View {
 Button(action: {
 self.isShowingMailView.toggle()
 }) {
 Text("Tap Me")
 }
 .disabled(!MFMailComposeViewController.canSendMail())
 .sheet(isPresented: $isShowingMailView) {
 MailView(result: self.$result)
 }
 }
 }
 */

import MessageUI
import SwiftUI
import UIKit


struct MailView: UIViewControllerRepresentable {
  
  @Environment(\.presentationMode) var presentation
  
  @Binding var isShowing: Bool
  
  @Binding var result: Result<MFMailComposeResult, Error>?
  
  @Binding var recipients: String
  
  @Binding var subject: String
  
  class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
    
    @Binding var presentation: PresentationMode
    @Binding var result: Result<MFMailComposeResult, Error>?
    @Binding var recipients: String
    @Binding var subject: String
    
    init(presentation: Binding<PresentationMode>,
         result: Binding<Result<MFMailComposeResult, Error>?>,
         recipients: Binding<String>,
         subject: Binding<String>) {
      _presentation = presentation
      _result = result
      _recipients = recipients
      _subject = subject
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController,
                               didFinishWith result: MFMailComposeResult,
                               error: Error?) {
      defer {
        $presentation.wrappedValue.dismiss()
      }
      guard error == nil else {
        self.result = .failure(error!)
        return
      }
      self.result = .success(result)
    }
  }
  
  func makeCoordinator() -> Coordinator {
    return Coordinator(presentation: presentation,
                       result: $result,
                       recipients: $recipients,
                       subject: $subject)
  }
  
  func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
    let vc = MFMailComposeViewController()
    vc.setToRecipients([recipients])
    vc.setSubject(subject)
    vc.mailComposeDelegate = context.coordinator
    return vc
  }
  
  func updateUIViewController(_ uiViewController: MFMailComposeViewController,
                              context: UIViewControllerRepresentableContext<MailView>) {
    
  }
}
