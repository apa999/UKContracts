//
//  UKContractsApp.swift
//  UKContracts
//
//  Created by Anthony Abbott on 18/10/2022.
//

import SwiftUI

@main
struct UKContractsApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView(cfViewModel: CFViewModel())
        }
    }
}
