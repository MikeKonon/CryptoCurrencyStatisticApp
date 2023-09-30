//
//  StringExtension.swift
//  CryptoCurrencyStatistic
//
//  Created by Mikhail Konovalov on 21.09.23.
//

import Foundation

extension String {
    
    var removeHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
