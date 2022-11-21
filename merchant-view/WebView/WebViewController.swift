//
//  WebViewController.swift
//  merchant-view
//
//  Created by Artem Krotov on 21.11.2022.
//

import UIKit
import WebKit

class WebViewController : UIViewController {
    
    private var url: String = "https://ya.ru"
    
    @IBOutlet weak var webView: WKWebView!
    
    func setURL(url: String) {
        self.url = url
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: url) else {return}
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
}
