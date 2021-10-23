//
//  UIDevice+hasHomeButton.swift
//  Portal
//
//  Created by Greg Charyszczak on 03/09/2020.
//

import UIKit

public extension UIDevice {
    var hasHomeButton: Bool {
        if let keyWindow = UIApplication.shared.windows.first, keyWindow.safeAreaInsets.bottom > 0 {
            return false
        }
        return true
    }
}
