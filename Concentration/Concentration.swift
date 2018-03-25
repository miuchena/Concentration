//
//  Concentration.swift
//  Concentration
//
//  Created by Anastasia Krasnova on 13/03/2018.
//  Copyright © 2018 Anastasia Krasnova. All rights reserved.
//

import Foundation

class Concentration {
    private(set) var cards = [Card]()
    
    private var indexOfOneAndOnlyFacedUpCard: Int? {
        get {
            var foundIndex: Int?
            for index in cards.indices {
                if cards[index].isFacedUp {
                    if foundIndex == nil {
                        foundIndex = index
                    } else {
                        return nil
                    }
                }
            }
            return foundIndex
        }
                set {
                    for index in cards.indices {
                        cards[index].isFacedUp = (index == newValue)
                    }
                }
            }

    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFacedUpCard, matchIndex != index {
                // check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFacedUp = true
//                indexOfOneAndOnlyFaced = nil
            } else {
                // either no cards or 2 cards are faced up
 //               for flipDownIndex in cards.indices {
   //                 cards[flipDownIndex].isFacedUp = false
                indexOfOneAndOnlyFacedUpCard = index
               
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        // TODO: Shuffle the cards
    }
}
