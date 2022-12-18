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
        
        guard let url = URL(string: parameters.url) else {return}
        let request = URLRequest(url: url)
        
        do {
            let webView = try mainView.getWebView()
            webView.load(request)
            self.view.backgroundColor = .white
            self.view.addSubview(mainView)
        } catch _ as NSError {
            
        }
    }
    
}
