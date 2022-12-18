//
//  BaseController.swift
//  merchant-view
//
//  Created by Artem Krotov on 18.12.2022.
//

import UIKit

protocol BaseControllerProtocol {
    
    func initView()
    
}

class BaseController<V : BaseViewProtocol, P : BaseParametersProtocol> : UIViewController, BaseControllerProtocol {
    
    let mainView: V
    let parameters: P
    
    init(view: V, parameters: P) {
        self.mainView = view
        self.parameters = parameters
        super.init(nibName: nil, bundle: nil)
    }
    
    @available (*, unavailable) required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initView() {
        self.mainView.initialize()
        self.view.addSubview(mainView)
    }

    
}
