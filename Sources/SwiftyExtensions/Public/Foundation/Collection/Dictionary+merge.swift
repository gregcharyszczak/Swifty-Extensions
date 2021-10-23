//
//  Dictionary+merge.swift
//  Portal
//
//  Created by Greg Charyszczak on 03/09/2020.
//

import Foundation

public extension Dictionary {
    mutating func merge(dict: [Key: Value]){
        for (k, v) in dict {
            updateValue(v, forKey: k)
        }
    }
}
