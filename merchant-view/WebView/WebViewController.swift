//
//  WebViewController.swift
//  merchant-view
//
//  Created by Artem Krotov on 21.11.2022.
//

import UIKit
import WebKit

class WebViewController : UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var webView: WKWebView!
    
    //MARK: private
    var params: WebViewParameters?
    let defaultParams = WebViewParameters(url: "https://ya.ru")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: (params ?? defaultParams).url) else {return}
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
}
