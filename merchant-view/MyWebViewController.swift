//
//  WebViewController.swift
//  merchant-view
//
//  Created by Artem Krotov on 19.11.2022.
//

import UIKit
import WebKit

class MyWebViewController: UIViewController {
    
    var url: String = "https://ya.ru"
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: url) else {return}
        let request = URLRequest(url: url)
        webView.load(request)
    }
    

}
