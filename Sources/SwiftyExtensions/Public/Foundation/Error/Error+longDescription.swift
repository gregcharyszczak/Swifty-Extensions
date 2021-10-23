//
//  Error+longDescription.swift
//  Portal
//
//  Created by Greg Charyszczak on 03/09/2020.
//

import Foundation

public extension Error {
    var longDescription: String {
        return "\(type(of: self)) - \(String(describing: self)) - \(self.localizedDescription)"
    }
}
