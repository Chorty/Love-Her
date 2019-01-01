//
//  File.swift
//  FunFactsWatch2 Extension
//
//  Created by Matt Joslin on 12/13/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import UIKit
import GameKit


struct ImageModelWatch {
    let imagesWatch = [
        #imageLiteral(resourceName: "18"),
        #imageLiteral(resourceName: "22")
    ]
    
    func getRandomImageWatch() -> UIImage {
        //let generator: RandomNumberGenerator
        //random().advancedBy(1, limit: colors.count)//var randomNumber = arc4rand //random_uniform(colors.count)
        let randomNumberWatch = Int(arc4random_uniform(UInt32(imagesWatch.count)))//nextIntWithUpperBound(colors.count)
        //print("RandomImages = \(randomNumber) DupeImage = \(dupeImage)")
        /*(while imagesWatch[randomNumberWatch] == dupeImageWatch {
            //print("DUPLICATE Func Image \(images[randomNumber])")
            //print("RandomImages = \(randomNumber) DupeImage = \(dupeImage)")
            randomNumberWatch = Int(arc4random_uniform(UInt32(imagesWatch.count)))
        } */
        return imagesWatch[randomNumberWatch]
    }
}
