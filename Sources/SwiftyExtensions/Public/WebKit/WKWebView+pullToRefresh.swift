//
//  WKWebView+pullToRefresh.swift
//  Portal
//
//  Created by Greg Charyszczak on 28/09/2021.
//

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
