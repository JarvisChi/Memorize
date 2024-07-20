//
//  Item.swift
//  Memorize
//
//  Created by Dan Chi on 7/20/24.
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
