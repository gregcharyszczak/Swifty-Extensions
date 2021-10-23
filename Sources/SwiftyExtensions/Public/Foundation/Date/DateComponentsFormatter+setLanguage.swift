//
//  DateComponentsFormatter+setLanguage.swift
//  Portal
//
//  Created by Greg on 23/11/2020.
//

import Foundation

public extension DateComponentsFormatter {
    func setLanguage(_ languageCode: String) {
        var calendar = Calendar.current
        calendar.locale = Locale(identifier: languageCode)
        self.calendar = calendar
    }
}
