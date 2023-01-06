import UIKit

public extension UIDevice {
    var hasHomeButton: Bool {
        if let keyWindow = UIApplication.shared.windows.first, keyWindow.safeAreaInsets.bottom > 0 {
            return false
        }
        return true
    }
}
