//
//  MainView.swift
//  merchant-view
//
//  Created by Artem Krotov on 18.12.2022.
//

import UIKit

protocol MainViewProtocol : BaseViewProtocol {
    
}

class MainView: BaseView, MainViewProtocol {
    
    var label: UILabel
    var textField: UITextView
    var button: UIButton
    
    weak var controller: MainController?
    
    override init(frame: CGRect) {
        label = UILabel()
        textField = UITextView()
        button = UIButton(type: .system)
        super.init(frame: frame)
    }
    
    override func initialize() {
        label.frame = CGRect(x: 0, y: 200, width: frame.width, height: 25)
        label.text = "LS.MerchantView.Main.Label".localize()
        label.font = UIFont.boldSystemFont(ofSize: 24.0)
        label.textAlignment = .center
        addSubview(label)
        
        textField.frame = CGRect(x: 20, y: 250, width: frame.width - 40, height: 200)
        textField.text = controller?.parameters.defualURL
        textField.autocorrectionType = .no
        textField.layer.borderWidth = 1
        textField.font = UIFont.systemFont(ofSize: 20.0)
        textField.layer.cornerRadius = 5.0
        addSubview(textField)
        
        button.frame = CGRect(x: 100, y: 475, width: frame.width - 200, height: 100)
        button.setTitle("LS.MerchantView.Main.Button".localize(), for: .normal)
        button.backgroundColor = UIColor(named: "AppColor")
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24.0)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.blue, for: .selected)
        button.layer.cornerRadius = 10.0
        addSubview(button)
    }
    
}
