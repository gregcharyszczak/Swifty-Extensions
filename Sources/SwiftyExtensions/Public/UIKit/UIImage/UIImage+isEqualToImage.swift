//
//  UIImage+isEqualToImage.swift
//  Portal
//
//  Created by Greg Charyszczak on 16/08/2021.
//

import UIKit

public extension UIImage {
    func isEqualToImage(_ image: UIImage?) -> Bool {
        if let image = image {
            let data1 = self.pngData()
            let data2 = image.pngData()
            return data1 == data2
        } else {
            return false
        }
    }
}
