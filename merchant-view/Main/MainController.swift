//
//  ViewController.swift
//  merchant-view
//
//  Created by Artem Krotov on 19.11.2022.
//

import UIKit

class MainController: BaseController<MainView, MainParameters> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.initView()
        
        self.view.backgroundColor = .white
        self.view.addSubview(mainView)
    }
    
    func didTapOpenButton(sender: UIButton) {
        let params: WebViewParameters = WebViewParameters(url: mainView.textField.text)
        router.showWebView(viewController: self, params: params)
    }

}

