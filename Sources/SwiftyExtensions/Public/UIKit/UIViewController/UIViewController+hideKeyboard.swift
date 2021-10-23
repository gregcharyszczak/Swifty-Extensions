//
//  UIViewController+hideKeyboard.swift
//  Portal
//
//  Created by Greg on 12/10/2020.
//

import UIKit

public extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        navigationItem.searchController?.searchBar.endEditing(true)
        view.endEditing(true)
        self.view.window?.endEditing(true)
    }
}
