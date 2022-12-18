//
//  WKWebView.swift
//  merchant-view
//
//  Created by Artem Krotov on 18.12.2022.
//

import WebKit

extension WKWebView {
    
    func loadURL(nURL: NSURL) {
        guard let url = nURL.absoluteURL else {return}
        let request = URLRequest(url: url)
        self.load(request)
    }
}
