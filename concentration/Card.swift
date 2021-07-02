//
//  Card.swift
//  concentration
//
//  Created by Maro on 31.03.2021.
//

import Foundation

struct Card{
    var isFaceUP = false
    var isMatched = false
    var id: Int
    
    static var identifierFactory = 0
    static func getUniqueId() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init (){
        self.id = Card.getUniqueId()
    }
}
