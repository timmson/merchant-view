//
//  MainRouter.swift
//  merchant-view
//
//  Created by Artem Krotov on 21.11.2022.
//

import UIKit

protocol MainRouter {
    
    func createRootController() -> UIViewController
    
    func showWebView(viewController: UIViewController, params: WebViewParameters)
    
}

extension Router: MainRouter {
    
    //MARK: - Public
    func createRootController() -> UIViewController {
        let bounds = UIScreen.main.bounds
        let topPadding = 50.0
        let bottoMpadding = 10.0
        let view = MainView( frame: CGRect(
                x: 0,
                y: topPadding,
                width: bounds.width,
                height: bounds.height - bottoMpadding - topPadding
            ))
        
        let params = MainParameters(defualURL: "https://yandex.ru")

        let mainController = MainController(view: view, parameters: params, router: self)
        
        view.controller = mainController
        
        return mainController
    }
    
    func showWebView(viewController: UIViewController, params: WebViewParameters) {
        let bounds = UIScreen.main.bounds
        let topPadding = 50.0
        let bottoMpadding = 10.0
        let view = WebViewView( frame: CGRect(
                x: 0,
                y: topPadding,
                width: bounds.width,
                height: bounds.height - bottoMpadding - topPadding
            ))
        
        let webViewController = WebViewController(view: view, parameters: params, router: self)
        
        viewController.navigationController?.pushViewController(webViewController, animated: true)
    }
    
}
