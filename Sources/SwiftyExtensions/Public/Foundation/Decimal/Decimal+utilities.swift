//
//  Decimal+utilities.swift
//  Portal
//
//  Created by Greg Charyszczak on 16/08/2021.
//

import Foundation

public extension Decimal {
    func rounded(_ roundingMode: NSDecimalNumber.RoundingMode = .bankers) -> Decimal {
        var result = Decimal()
        var number = self
        NSDecimalRound(&result, &number, 0, roundingMode)
        return result
    }
    var whole: Decimal { self < 0 ? rounded(.up) : rounded(.down) }
    var fraction: Decimal { self - whole }
}
