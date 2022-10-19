//
//  Gradients.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import SwiftUI

struct GradientsView: View {
  
  let gradientType: Int = 1
  
  var body: some View {
    backgroundGradient
  }
  
  //MARK: - Private vars
  @ViewBuilder
  private var backgroundGradient: some View {
    switch gradientType {
      case 0  :  angularGradient.ignoresSafeArea()
      case 1  :  linearGradient.ignoresSafeArea()
      case 2  :  radialGradient.ignoresSafeArea()
      default :  linearGradient.ignoresSafeArea()
    }
  }
  
  private var angularGradient: some View {
    AngularGradient(gradient: Gradient(colors: Constants.angularGradientColours),
                    center: .center)
  }
  
  private var linearGradient: some View {
    LinearGradient(gradient: Gradient(colors: [Constants.linearGradientStartColour,
                                               Constants.linearGradientStopColour]),
                   startPoint: .top, endPoint: .bottom)
    
  } // linearGradient
  
  private var radialGradient: some View {
    RadialGradient(stops: [
      .init(color: Constants.linearGradientStartColour, location: 0.3),
      .init(color: Constants.linearGradientStopColour, location: 0.3),
    ], center: .top, startRadius: 200, endRadius: 700)
  } // radialGradient
}

struct Gradients_Previews: PreviewProvider {
  static var previews: some View {
    GradientsView()
  }
}
