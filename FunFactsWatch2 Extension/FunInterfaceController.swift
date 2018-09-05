//
//  InterfaceController.swift
//  FunFactsWatch2 Extension
//
//  Created by Matt Joslin on 9/2/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//
import UIKit
import WatchKit
import Foundation


class FunInterfaceController: WKInterfaceController {
    @IBOutlet var funFactLabelWatch: WKInterfaceLabel!
    @IBOutlet var funFactButtonWatch: WKInterfaceButton!
    
    let factModelWatch = FactModelWatch()
    let colorModelWatch = ColorModelWatch()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        /* let dupeColorWatch = funFactButtonWatch.setTitle(funFactButtonWatch)
        let dupeFactWatch: String? = funFactLabelWatch.text
        let randomCWatch = ColorModelWatch().getRandomColorWatch(dupeColorWatch: dupeColorWatch!)
        let randomFWatch = FactModelWatch().getRandomFactWatch(dupeFactWatch: dupeFactWatch!)
        view.backgroundColor = randomCWatch //ColorModel().getRandomColor(dupeColor)
        funFactButtonWatch.tintColor = randomCWatch //ColorModel().getRandomColor()
        funFactLabelWatch.text = randomFWatch
        
        */
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func showFunFactWatch() {
        
        //let dupeColorWatch = colorModelWatch.colorsWatch
        //let dupeFactWatch =
        //let randomCWatch = colorModelWatch.getRandomColorWatch(dupeColorWatch: Int(UInt32(arc4random_uniform(dupeColorWatch))) //arc4random_uniform(UInt32(dupeColorWatch)))
        //let randomFWatch = FactModelWatch().factsWatch(dupeFactWatch).getRandomFactWatch()
        //let randomFWatch = funFactLabelWatch().getRandomFactWatch(dupeFactWatch!)
        //self.funFactButtonWatch.backgroundColor = randomCWatch
        //funFactButtonWatch.tintColor = randomCWatch //ColorModel().getRandomColor()
        funFactLabelWatch.setText(factModelWatch.getRandomFactWatch()) //.getRandomFactWatch(dupeFact!)))
        
        
    }

}
