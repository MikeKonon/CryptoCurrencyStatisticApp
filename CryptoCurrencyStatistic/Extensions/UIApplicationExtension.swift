//
//  UIApplicationExtension.swift
//  CryptoCurrencyStatistic
//
//  Created by Mikhail Konovalov on 16.09.23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
