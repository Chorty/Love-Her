//
//  ColorModelTV.swift
//  I Love You
//
//  Created by Matt Joslin on 4/4/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit
import GameKit


struct ColorModelTV {
    let colorsTV = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0), // teal color
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0), // yellow color
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0), // red color
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0), // orange color
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0), // dark color
        UIColor(red:105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0), // purple color
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0), // green color
    ]
    
    func getRandomColorTV(dupeColorTV: UIColor) -> UIColor {
        //let generator: RandomNumberGenerator
        //random().advancedBy(1, limit: colors.count)
        //var randomNumber = arc4rand //random_uniform(colors.count)
        var randomNumberTV = Int(arc4random_uniform(UInt32(colorsTV.count)))
        while colorsTV[randomNumberTV] == dupeColorTV {
            print("Dup Func Color \(colorsTV[randomNumberTV])")
            randomNumberTV = Int(arc4random_uniform(UInt32(colorsTV.count)))
        }
        return colorsTV[randomNumberTV]
    }
    
}
