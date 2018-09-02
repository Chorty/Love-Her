//
//  InterfaceController.swift
//  FunFactsWatch Extension
//
//  Created by Matt Joslin on 9/1/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//
import UIKit
import Foundation
import WatchKit
import Foundation



class WKInterfaceLabel : WKInterfaceObject {
    
    let factModelWatch = FactModelWatch()
    
    @IBOutlet var funFactLabelWatch: WKInterfaceLabel!
    @IBOutlet var funFactButtonWatch: WKInterfaceButton!
    
    
  func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        //func viewDidLoad() {
        let dupeColorWatch = funFactButtonWatch.
        let dupeFactWatch: String = funFactLabelWatch.
        
        let randomCWatch = ColorModelWatch().getRandomColorWatch(dupeColorWatch: dupeColorWatch)
        let randomFWatch = FactModelWatch().getRandomFactWatch(dupeFactWatch: dupeFactWatch)
        view.backgroundColor = randomCWatch //ColorModel().getRandomColor(dupeColor)
        funFactButtonWatch.tintColor = randomCWatch //ColorModel().getRandomColor()
        funFactLabelWatch.text = randomFWatch
        
        //}
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
   
    
    @IBAction func showFunFactWatch() {
        
        let dupeColorWatch = funFactButtonWatch.tintColor
        let dupeFactWatch: String? = funFactLabelWatch.text
        let randomCWatch = ColorModelWatch().getRandomColor(dupeColorWatch)
        let randomFWatch = FactModelWatch().getRandomFactWatch(dupeFactWatch: dupeFactWatch!)
        //view.backgroundColor = randomCWatch //ColorModel().getRandomColor(dupeColor)
        funFactButtonWatch.tintColor = randomCWatch //ColorModel().getRandomColor()
        funFactLabelWatch.text = randomFWatch
        //print(dupeColor)
        //print(randomC)
        //print(dupeFact)
        //print(randomF)
        
        //let randomColor = ColorModel().getRandomColor(dupeColor) //= funFactButton.tintColor
        //let randomFact: String = factModel.getRandomFact(dupeFact!)
        //randomFact = factModel.getRandomFact()
        //let randomC = ColorModel().getRandomColor().toHexString()
        //print(UIColor(hexString: randomColor.toHexString()))
        //print(randomColor.toHexString())//.toHexString())
        /*
         let viewBackC = funFactButton.tintColor.toHexString()
         print(viewBackC)
         print(randomColor.toHexString())
         if randomColor.toHexString() == viewBackC {
         print("color")
         let randomC = ColorModel().getRandomColor(dupeColor)
         view.backgroundColor = randomC //ColorModel().getRandomColor(dupeColor)
         funFactButton.tintColor = randomC //ColorModel().getRandomColor()
         
         //    print(viewBackC)
         
         //print(UIColor(hexString: randomColor.toHexString()).toHexString())
         //print(randomColor.toHexString())//randomColor = ColorModel().getRandomColor()
         //showFunFact()
         
         //randomFact = factModel.getRandomFact()
         //print(ColorModel().getRandomColor())
         //view.backgroundColor = randomColor
         //funFactButton.tintColor = randomColor
         //funFactLabel.text = randomFact
         showFunFact()
         //view.backgroundColor = randomColor
         //funFactButton.tintColor = randomColor
         funFactLabel.text = factModel.getRandomFact(dupeFact!)
         } else if funFactLabel.text == randomFact {
         print("duplicate fact")
         //showFunFact()
         //view.backgroundColor = randomColor
         //funFactButton.tintColor = randomColor
         //funFactLabel.text = factModel.getRandomFact()
         showFunFact()
         
         view.backgroundColor = randomColor
         funFactButton.tintColor = randomColor
         funFactLabel.text = factModel.getRandomFact(dupeFact!)
         } else {
         print("else")
         
         
         view.backgroundColor = randomColor
         funFactButton.tintColor = randomColor
         funFactLabel.text = factModel.getRandomFact(dupeFact!)
         }
         }
         */
    }
}



