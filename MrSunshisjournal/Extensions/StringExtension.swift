//
//  StringExtension.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 18/12/24.
//

import Foundation

extension String {
    var localized: String{
        return NSLocalizedString(self, comment: "")
    }
    
    func lacalized(WithComment comment : String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
}


