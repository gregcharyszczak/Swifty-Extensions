import Foundation

public extension Error {
    var longDescription: String {
        return "\(type(of: self)) - \(String(describing: self)) - \(self.localizedDescription)"
    }
}
