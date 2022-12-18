//
//  String+localize.swift
//  merchant-view
//
//  Created by Artem Krotov on 18.12.2022.
//

import Foundation

extension String {
    
    func localize() -> String {
        return NSLocalizedString(self, comment: "")
    }
    
}
