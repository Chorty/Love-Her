//
//  ImageModel.swift
//  Love Her
//
//  Created by Matt Joslin on 11/15/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit
import GameKit


struct ImageModelTV {
    let imagesTVI = [
        #imageLiteral(resourceName: "25"),
        #imageLiteral(resourceName: "4"),
        #imageLiteral(resourceName: "17"),
        #imageLiteral(resourceName: "10"),
        #imageLiteral(resourceName: "25"),
        #imageLiteral(resourceName: "15"),
        #imageLiteral(resourceName: "22"),
        #imageLiteral(resourceName: "11"),
        #imageLiteral(resourceName: "16"),
        #imageLiteral(resourceName: "15"),
        #imageLiteral(resourceName: "14"),
        #imageLiteral(resourceName: "8"),
        #imageLiteral(resourceName: "6"),
        #imageLiteral(resourceName: "10"),
        #imageLiteral(resourceName: "17"),
        #imageLiteral(resourceName: "12"),
        #imageLiteral(resourceName: "19"),
        #imageLiteral(resourceName: "23"),
        #imageLiteral(resourceName: "1"),
        #imageLiteral(resourceName: "12"),
        #imageLiteral(resourceName: "8"),
        #imageLiteral(resourceName: "4"),
        #imageLiteral(resourceName: "22"),
        #imageLiteral(resourceName: "20"),
        #imageLiteral(resourceName: "15"),
        #imageLiteral(resourceName: "6"),
        #imageLiteral(resourceName: "7")
        ]

    func getRandomImageTV(dupeImageTV: UIImage) -> UIImage {
        //let generator: RandomNumberGenerator
        //random().advancedBy(1, limit: colors.count)//var randomNumber = arc4rand //random_uniform(colors.count)
        var randomNumberTV = GKRandomSource.sharedRandom().nextInt(upperBound: imagesTVI.count) //nextIntWithUpperBound(colors.count)
        //print("RandomImages = \(randomNumber) DupeImage = \(dupeImage)")
        while imagesTVI[randomNumberTV] == dupeImageTV {
            //print("DUPLICATE Func Image \(images[randomNumber])")
            //print("RandomImages = \(randomNumber) DupeImage = \(dupeImage)")
            randomNumberTV = GKRandomSource.sharedRandom().nextInt(upperBound: imagesTVI.count)
        }
        return imagesTVI[randomNumberTV]
    }
}

