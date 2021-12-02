//
//  WKWebView+pullToRefresh.swift
//  Portal
//
//  Created by Greg Charyszczak on 28/09/2021.
//  Copyright © 2021 Greg Charyszczak. All rights reserved.
//
//    The MIT License (MIT)
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.

import UIKit
import WebKit

public extension WKWebView {
    var refreshControl: UIRefreshControl? { (scrollView.getAllSubviews() as [UIRefreshControl]).first }

    enum PullToRefreshType {
        case none
        case embed
        case custom(target: Any, selector: Selector)
    }

    func setPullToRefresh(type: PullToRefreshType) {
        (scrollView.getAllSubviews() as [UIRefreshControl]).forEach { $0.removeFromSuperview() }
        switch type {
            case .none: break
            case .embed: _setPullToRefresh(target: self, selector: #selector(webViewPullToRefreshHandler(source:)))
            case .custom(let target, let selector): _setPullToRefresh(target: target, selector: selector)
        }
    }

    private func _setPullToRefresh(target: Any, selector: Selector) {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(target, action: selector, for: .valueChanged)
        scrollView.addSubview(refreshControl)
    }

    @objc func webViewPullToRefreshHandler(source: UIRefreshControl) {
        guard let url = self.url else { source.endRefreshing(); return }
        load(URLRequest(url: url))
  
    }
}
