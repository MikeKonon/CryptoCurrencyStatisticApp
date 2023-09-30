//
//  HapticManager.swift
//  CryptoCurrencyStatistic
//
//  Created by Mikhail Konovalov on 20.09.23.
//

import Foundation
import SwiftUI

final class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
