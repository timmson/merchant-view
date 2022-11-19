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
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showWebView" else {return}
        guard let destination = segue.destination as? MyWebViewController else {return}
        print ("URL: " + urlField.text)
        destination.url = urlField.text
    }


}

