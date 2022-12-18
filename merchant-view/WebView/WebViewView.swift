//
//  WebViewView.swift
//  merchant-view
//
//  Created by Artem Krotov on 18.12.2022.
//

import UIKit
import WebKit

protocol WebViewViewProtocol : BaseViewProtocol {
    
}

class WebViewView : BaseView, WebViewViewProtocol {
    
    var webView: WKWebView?
    
    override func initialize() {
        webView = WKWebView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        self.addSubview(webView!)
    }
    
}
