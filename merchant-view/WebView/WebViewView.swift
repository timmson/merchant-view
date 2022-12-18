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
    
    let webView: WKWebView
    let loaderLabel: UILabel
    
    override init(frame: CGRect) {
        webView = WKWebView()
        loaderLabel = UILabel()
        super.init(frame: frame)
    }
    
    override func initialize() {
        webView.frame = frame
        //addSubview(webView)
        
        loaderLabel.frame = CGRect(x: 0, y: 250, width: frame.width, height: 200)
        loaderLabel.font = UIFont.boldSystemFont(ofSize: 30.0)
        loaderLabel.textAlignment = .center
    }
    
    func setLoading(percent: Int) {
        if percent == 100 {
            loaderLabel.removeFromSuperview()
            addSubview(webView)
        } else {
            loaderLabel.text = "\(percent)%"
            webView.removeFromSuperview()
            addSubview(loaderLabel)
        }
    }
    
}
