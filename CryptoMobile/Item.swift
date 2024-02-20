//
//  Item.swift
//  CryptoMobile
//
//  Created by User on 21/02/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
