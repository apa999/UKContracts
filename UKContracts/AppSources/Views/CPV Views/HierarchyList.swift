//
//  HierarchyList.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

/*
 HierarchyList(data: cpvs, children: \.children, rowContent: {
 CPVCheckView(cpv: $0) })
 }
 */

import SwiftUI
import WebKit

struct HierarchyList<Data, RowContent>: View where Data: RandomAccessCollection, Data.Element: Identifiable, RowContent: View {
  
  private let recursiveView: RecursiveView<Data, RowContent>
    
  public init(data: Data, children: KeyPath<Data.Element, Data>, rowContent: @escaping (Data.Element) -> RowContent) {
    self.recursiveView = RecursiveView(data: data, children: children, rowContent: rowContent)
  }
  
  /// True if showing website
  @State private var isShowingWebView: Bool = false
  
  public var body: some View {
    NavigationView {
      List {
        recursiveView
      }
    } // NavigationView
  } // body
} // struct HierarchyList

private struct RecursiveView<Data, RowContent>: View where Data: RandomAccessCollection, Data.Element: Identifiable, RowContent: View {
  let data: Data
  let children: KeyPath<Data.Element, Data>
  let rowContent: (Data.Element) -> RowContent
  
  var body: some View {
    ForEach(data) { child in
      if self.containsSub(child)  {
        
        /// There are children
        FSDisclosureGroup(content: {
          RecursiveView(data: child[keyPath: self.children], children: self.children, rowContent: self.rowContent)
            .padding(.leading)
        }, label: {
          self.rowContent(child)
        }, cpv: child as! CPV)
      } else {
        /// Childless
        
        /// In the original version, we did not  call FSDisclosure here, but just  self.rowContent(). However, when
        /// we did this, tapping anywhere in the row triggered the check bix and internet buttons.
        FSDisclosureGroup(content: {
          RecursiveView(data: child[keyPath: self.children], children: self.children, rowContent: self.rowContent)
            .padding(.leading)
        }, label: {
          self.rowContent(child)
        } , cpv: child as! CPV)
        
//        self.rowContent(child)
      }
    } // ForEach
  } // body
  
  /// Returns true if the data has children
  private func containsSub(_ element: Data.Element) -> Bool {
    element[keyPath: children].count != 0
  } // private func containsSub()
} //  private struct RecursiveView

struct FSDisclosureGroup<Label, Content>: View where Label: View, Content: View {
  @State var isExpanded: Bool = false
  var content: () -> Content
  var label: () -> Label
  var cpv: CPV
  
  @ViewBuilder
  var body: some View {
    Button(action: { self.isExpanded.toggle()
    }, label: { label().foregroundColor(Constants.settingsTextColor) })
     
    if isExpanded || cpv.isSelected { content() }
  } // body
} // struct FSDisclosureGroup

