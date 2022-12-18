//
//  BaseView.swift
//  merchant-view
//
//  Created by Artem Krotov on 18.12.2022.
//

import UIKit

protocol BaseViewProtocol : UIView {
    
    func initialize()
    
}

class BaseView : UIView, BaseViewProtocol {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @available(*, unavailable) required init?(coder aDecoder: NSCoder) {
        fatalError("required init not implemented")
    }
    
    func initialize() {
        
    }
}

