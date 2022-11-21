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
    
    //MARK: - Private
    private func createController(name: String) -> UIViewController {
        let storyBoard = UIStoryboard(name: name, bundle: nil)
        return storyBoard.instantiateViewController(withIdentifier: name)
    }
     
    //MARK: - Public
    func showWebView(viewController: UIViewController, params: WebViewParameters) {
        let webVc = createController(name: "WebViewController") as! WebViewController
        webVc.params = params
        viewController.navigationController?.pushViewController(webVc, animated: true)
    }
    
}
