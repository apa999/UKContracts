//
//  EquatableError.swift
//  UKContracts
//
//  Created by Anthony Abbott on 19/10/2022.
//

import Foundation

/**
 Error conforming to Equatable
 
  [Error conforming to Equatable]: https://twittemb.github.io/posts/2021-12-10-EquatableError/ "Some hover text"
 
  Full discussion here [Error conforming to Equatable].
 */
struct EquatableError: Error, Equatable, CustomStringConvertible {
    let base: Error
    private let equals: (Error) -> Bool

    init<Base: Error>(_ base: Base) {
        self.base = base
        self.equals = { String(reflecting: $0) == String(reflecting: base) }
    }

//    init<Base: Error & Equatable>(_ base: Base) {
//        self.base = base
//        self.equals = { ($0 as? Base) == base }
//    }

    static func ==(lhs: EquatableError, rhs: EquatableError) -> Bool {
        lhs.equals(rhs.base)
    }

    var description: String {
        "\(self.base)"
    }

//    func asError<Base: Error>(type: Base.Type) -> Base? {
//        self.base as? Base
//    }

    var localizedDescription: String {
        self.base.localizedDescription
    }
}

extension Error where Self: Equatable {
    func toEquatableError() -> EquatableError {
        EquatableError(self)
    }
}

//extension Error {
//    func toEquatableError() -> EquatableError {
//        EquatableError(self)
//    }
//}
