//
//  FactModelWatch.swift
//  FunFactsWatch Extension
//
//  Created by Matt Joslin on 9/1/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import GameKit
import UIKit

struct FactModelWatch {
    let factsWatch =  [
        "I fell in love with you the moment you smiled on my kitchen counter.",
        "My heart has been yours since the very first night.",
        "I adore you, you crazy, beautiful, wonderful(but also sometimes quite odd nut but still my amazingly beautiful woman.",
        "You are born with 300 bones; by the time you are an adult you will have 206 how about after your read this we make it 207 bones in your body...... ;o)",
        "You are my world.",
        "Everyone has their own reasons for waking up in the morning.... Mine is you.",
        "The good things in life are so much better with you.",
        "I never want to wake up without you by my side... that way I always have you to poke with my 'Morning Wood'",
        "You are the one that stepped out of my dreams and showed me what love really means.",
        "Forever Yours.......",
        "Take my hand & we will get through this together."
    ]
    
    
    func getRandomFactWatch(dupeFactWatch: String) -> String {
        
        var randomNumberWatch = Int(arc4random_uniform(UInt32(factsWatch.count))) //GKRandomSource.sharedRandom().nextIntWithUpperBound(factsWatch.count)
        while factsWatch[randomNumberWatch] == dupeFactWatch {
            print("Dup Fact Func")
            randomNumberWatch = Int(arc4random_uniform(UInt32(factsWatch.count)))
        }
        return factsWatch[randomNumberWatch]
    }
    
    
    
    
    
    
    
    
    
}
