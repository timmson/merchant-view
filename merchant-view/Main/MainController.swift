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
        
        mainView.button.addTarget(self, action: #selector(didTapOpenButton(_:)), for: .touchUpInside)
    }
    
    @objc func didTapOpenButton(_ sender: UIButton) {
        mainView.textField.layer.borderColor = UIColor.systemRed.cgColor
        
        if let url = NSURL(string: mainView.textField.text) {
            if (url.scheme == "http" || url.scheme == "https") {
                let params: WebViewParameters = WebViewParameters(url: url)
                router.showWebView(viewController: self, params: params)
                mainView.textField.layer.borderColor = UIColor.black.cgColor
            }
        }
    }
    
}

