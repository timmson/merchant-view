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
        label = UILabel(frame: CGRect(x: 0, y: 200, width: frame.width, height: 25))
        textField = UITextView(frame: CGRect(x: 50, y: 275, width: frame.width - 100, height: 100))
        button = UIButton(type: .system)
        button.frame = CGRect(x: 50, y: 400, width: frame.width - 100, height: 100)
        super.init(frame: frame)
    }
    
    override func initialize() {
        label.text = "Enter URL"
        label.font = label.font.withSize(20.0)
        label.textAlignment = .center
        addSubview(label)
        
        textField.text = "https://yandex.ru"
        textField.layer.borderWidth = 1
        textField.font = label.font
        addSubview(textField)
        
        button.addTarget(self, action: #selector(didTapOpenButton(_:)), for: .touchUpInside)
        button.setTitle("Go", for: .normal)
        addSubview(button)
    }
    
    @objc func didTapOpenButton(_ sender: UIButton) {
        controller?.didTapOpenButton(sender: sender)
    }
    
}
