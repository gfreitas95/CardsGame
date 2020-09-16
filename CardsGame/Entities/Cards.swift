//
//  Cards.swift
//  CardsGame
//
//  Created by Gustavo on 15/09/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import UIKit

struct Card: Identifiable {
    
    var id: Int
    var cards: Array<Card>
    var isFaceUp: Bool = false
    var isMatched: Bool = false
}

class Cards: UIViewController {

    func index(of card: Card) -> Int {
        for index in 0..<card.cards.count {
            if card.cards[index].id == card.id {
                return index
            }
        }
        return 0
    }
}
