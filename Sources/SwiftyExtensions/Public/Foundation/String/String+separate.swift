//
//  String+separate.swift
//  Portal
//
//  Created by Greg Charyszczak on 16/08/2021.
//

import Foundation

public extension String {
    func separate(every stride: Int = 4, with separator: Character = " ") -> String {
        return String(enumerated().map { $0 > 0 && $0 % stride == 0 ? [separator, $1] : [$1]}.joined())
    }
}
