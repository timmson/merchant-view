//
//  WebViewController.swift
//  merchant-view
//
//  Created by Artem Krotov on 21.11.2022.
//

import UIKit
import WebKit

class WebViewController: BaseController<WebViewView, WebViewParameters> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.initView()
        
        mainView.webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
        mainView.webView.loadURL(nURL: parameters.url)
        
        self.view.backgroundColor = .white
        self.view.addSubview(mainView)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            mainView.setLoading(percent: Int(Float(mainView.webView.estimatedProgress)  * 100))
            
        }
    }
}
