//
//  DashedLine.swift
//  UKContracts
//
//  Created by Anthony Abbott on 20/10/2022.
//

import SwiftUI

/**
 Draws a dashed line
 
 Usage:
 struct ContentView: View {
      var body: some View {
          Line()
            .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
            .frame(height: 1)
     }
 }
 
 */
struct Line: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    path.move(to: CGPoint(x: 0, y: 0))
    path.addLine(to: CGPoint(x: rect.width, y: 0))
    return path
  }
}
