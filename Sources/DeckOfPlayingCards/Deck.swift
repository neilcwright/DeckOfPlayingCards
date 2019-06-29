//
//  Deck.swift
//  DeckOfPlayingCards
//
//  Created by Neil Wright on 6/16/19.
//

import Foundation
import FisherYates
import PlayingCard

public struct Deck {
    fileprivate var cards: [PlayingCard]
    public init(_ cards: [PlayingCard]) {
        self.cards = cards
    }
    
    public static func standard52CardDeck() -> Deck {
        let suits: [Suit] = [.Spades, .Hearts, .Diamonds, .Clubs]
        let ranks: [Rank] = [.Two, .Three, .Four, .Five, .Six, .Seven, .Eight, .Nine, .Ten, .Jack, .Queen, .King, .Ace]
        var cards: [PlayingCard] = []
        for rank in ranks {
            for suit in suits {
                cards.append(PlayingCard(rank: rank, suit: suit))
            }
        }
        return Deck(cards)
    }
    
    public mutating func shuffle() {
        cards.shuffle()
    }
    
    public mutating func deal() -> PlayingCard? {
        guard !cards.isEmpty else { return nil }
        return cards.removeLast()
    }
}

extension Deck: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: PlayingCard...) {
        self.init(elements)
    }
}

extension Deck: Equatable {}

public func ==(lhs: Deck, rhs: Deck) -> Bool {
    return lhs.cards == rhs.cards
}
