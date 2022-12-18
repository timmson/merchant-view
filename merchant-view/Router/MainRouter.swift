//
//  MainRouter.swift
//  merchant-view
//
//  Created by Artem Krotov on 21.11.2022.
//

import UIKit

protocol MainRouter {
    
    func showWebView(viewController: UIViewController, params: WebViewParameters)
    
}

extension Router: MainRouter {
    
    //MARK: - Public
    func showWebView(viewController: UIViewController, params: WebViewParameters) {
        let bounds = UIScreen.main.bounds
        let topPadding = 50.0
        let bottoMpadding = 10.0
        let webViewView = WebViewView( frame: CGRect(
                x: 0,
                y: topPadding,
                width: bounds.width,
                height: bounds.height - bottoMpadding - topPadding
            ))
        
        let webViewController = WebViewController(view: webViewView, parameters: params)
        
        viewController.navigationController?.pushViewController(webViewController, animated: true)
    }
    
}
