import Foundation

public extension DateFormatter {
    func setLanguage(_ languageCode: String) {
        self.locale = Locale(identifier: languageCode)
    }
}
