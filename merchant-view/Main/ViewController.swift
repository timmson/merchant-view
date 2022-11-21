//
//  ViewController.swift
//  merchant-view
//
//  Created by Artem Krotov on 19.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Private
    private let router: MainRouter = Router.shared
    
    //MARK: - Outlets
    @IBOutlet weak var urlField: UITextView!
    
    //MARK: - Actions
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapOpenButton() {
        let params: WebViewParameters = WebViewParameters(url: urlField.text)
        router.showWebView(viewController: self, params: params)
    }
    

}

