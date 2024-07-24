//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dan Chi on 7/22/24.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojies =  ["🐚","🐌","🌊","🏝️","🍍","🍋","🥜","🥥","🥬","🍀","☀️","🌺"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 12){ pairIndex in
            if emojies.indices.contains(pairIndex){
                return emojies[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    
    @Published private var model = createMemoryGame()
            
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intents
    func shuffle(){
        model.shuffle()
    }
    
    
    func choose(_ card: MemoryGame<String>.Card){
        model.choose(card)
    }
}
