//
//  Card.swift
//  Concentration
//
//  Created by Anastasia Krasnova on 13/03/2018.
//  Copyright © 2018 Anastasia Krasnova. All rights reserved.
//

import Foundation

struct Card {
    var isFacedUp = false
    var isMatched = false
    var identifier: Int
    private static var identifierFactory = 0
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
