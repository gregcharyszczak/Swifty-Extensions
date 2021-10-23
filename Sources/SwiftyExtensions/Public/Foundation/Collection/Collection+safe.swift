//
//  Collection+safe.swift
//  Portal
//
//  Created by Greg Charyszczak on 03/09/2020.
//

import Foundation

public extension Collection {

    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
