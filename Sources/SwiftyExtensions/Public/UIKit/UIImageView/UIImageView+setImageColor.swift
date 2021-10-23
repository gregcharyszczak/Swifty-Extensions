//
//  UIImageView+setImageColor.swift
//  Portal
//
//  Created by Greg Charyszczak on 03/09/2020.
//

import UIKit

public extension UIImageView {
    func setImageColor(to color: UIColor) {
        self.image = self.image?.withRenderingMode(.alwaysTemplate)
        self.tintColor = color
    }
}
