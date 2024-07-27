//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dan Chi on 7/22/24.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojies =  ["🐚","🐌","🌊","🏝️","🍍","🍋","🥜","🥥","🥬","🍀","☀️","🌺"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 2){ pairIndex in
            if emojies.indices.contains(pairIndex){
                return emojies[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    
    @Published private var model = createMemoryGame()
            
    var cards: Array<Card> {
        model.cards
    }
    
    var color: Color {
        .orange
    }
    
    // MARK: - Intents
    func shuffle(){
        model.shuffle()
    }
    
    
    func choose(_ card: Card){
        model.choose(card)
    }
}
