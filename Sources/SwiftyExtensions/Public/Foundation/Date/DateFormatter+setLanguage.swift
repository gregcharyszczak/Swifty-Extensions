//
//  DateFormatter+setLanguage.swift
//  Portal
//
//  Created by Greg on 23/11/2020.
//

import Foundation

public extension DateFormatter {
    func setLanguage(_ languageCode: String) {
        self.locale = Locale(identifier: languageCode)
    }
}
