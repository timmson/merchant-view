//
//  ViewController.swift
//  merchant-view
//
//  Created by Artem Krotov on 19.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var urlField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: - Private
    private func createController(name: String) -> UIViewController {
        let storyBoard = UIStoryboard(name: name, bundle: nil)
        return storyBoard.instantiateViewController(withIdentifier: name)
    }
    
    private func goToWebViewController() {
        let webVc = createController(name: "WebViewController") as! WebViewController
        webVc.setURL(url: urlField.text)
        navigationController?.pushViewController(webVc, animated: true)
    }
    
    
    //MARK: - Actions
    @IBAction func didTapOpenButton() {
        goToWebViewController()
    }
    
    @IBAction func didReturnOnTextView(textField: UITextView) {
        
    }
    


}

