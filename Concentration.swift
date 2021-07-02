//
//  Concentration.swift
//  concentration
//
//  Created by Maro on 31.03.2021.
//

import Foundation

    class Concentration {
    //application programming interface
    init (numberOfPairsOfCards:Int){
        for _ in 0...numberOfPairsOfCards{
            let card = Card()
            cards += [card,card]
        }
    }
    var cards = [Card]()
    var indexOfOneAndOnlyFaceUpCard: Int?
    func chooseCard(at index:Int){
        	
        	
        if !cards[index].isMatched{
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index{
                //check if cards match
                if cards[matchIndex].id == cards[index].id
                {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true;
                }
                cards[index].isFaceUP = true;
                indexOfOneAndOnlyFaceUpCard = nil;
            }
            else {
                //either no cards or 2 cards are face up
                for flipDwonIndex in cards.indices{
                    cards[flipDwonIndex].isFaceUP = false;
                }
                cards[index].isFaceUP = true;
                indexOfOneAndOnlyFaceUpCard = index;
                
            }
        }
    }
    func shuffleCard(){
        cards.shuffle()
    }
}

