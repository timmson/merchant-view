//
//  RouterTest.swift
//  merchant-viewTests
//
//  Created by Artem Krotov on 24.11.2022.
//

import XCTest
@testable import merchant_view

class MainRouterTest: XCTestCase {
    
    var router: MainRouter!
    var viewController: UIViewController!

    override func setUpWithError() throws {
        try super.setUpWithError()
        router = Router.shared
        viewController = UIViewController()
    }


    func testExample() throws {
        print("Test")
        
        let params = WebViewParameters(url: "some url")
        
        router.showWebView(viewController: viewController, params: params)
    }

}
