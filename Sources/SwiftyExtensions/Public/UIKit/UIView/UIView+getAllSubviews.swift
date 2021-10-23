//
//  UIView+getAllSubviews.swift
//  Portal
//
//  Created by Greg Charyszczak on 28/09/2021.
//

import UIKit
import WebKit

public extension UIView {
    class func getAllSubviews<T: UIView>(from parenView: UIView) -> [T] {
        return parenView.subviews.flatMap { subView -> [T] in
            var result = getAllSubviews(from: subView) as [T]
            if let view = subView as? T { result.append(view) }
            return result
        }
    }

    func getAllSubviews<T: UIView>() -> [T] { return UIView.getAllSubviews(from: self) as [T] }
}
