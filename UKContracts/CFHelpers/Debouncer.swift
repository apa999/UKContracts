//
//  Debouncer.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//


import Combine
import Foundation

class Debouncer<T>: ObservableObject {
  
  @Published var input: T
  @Published var output: T
  
  private var textDebounce: AnyCancellable?
  
  //MARK: - Init
  init(initialValue: T, delay: Double = 1) {
    self.input  = initialValue
    self.output = initialValue
    textDebounce = $input
      .debounce(for: .seconds(delay), scheduler: DispatchQueue.main)
      .sink { [weak self] in
        self?.output = $0
    } // sink
  } // init()
} // Debounce

