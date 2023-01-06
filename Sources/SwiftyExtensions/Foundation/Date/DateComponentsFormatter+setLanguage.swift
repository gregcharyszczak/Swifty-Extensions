import Foundation

public extension DateComponentsFormatter {
    func setLanguage(_ languageCode: String) {
        var calendar = Calendar.current
        calendar.locale = Locale(identifier: languageCode)
        self.calendar = calendar
    }
}
