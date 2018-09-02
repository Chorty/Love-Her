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


class InterfaceController: WKInterfaceController {
    @IBOutlet var funFactLabelWatch: WKInterfaceLabel!
    @IBOutlet var funFactButtonWatch: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        let dupeColorWatch = funFactButtonWatch.tintColor
        let dupeFactWatch: String? = funFactLabelWatch.text
        let randomCWatch = ColorModelWatch().getRandomColor(dupeColorWatch: dupeColorWatch!)
        let randomFWatch = FactModelWatch().getRandomFactWatch(dupeFactWatch: dupeFactWatch!)
        view.backgroundColor = randomCWatch //ColorModel().getRandomColor(dupeColor)
        funFactButtonWatch.tintColor = randomCWatch //ColorModel().getRandomColor()
        funFactLabelWatch.text = randomFWatch
        super.willActivate()
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func showFunFactWatch() {
        let dupeColorWatch = funFactButtonWatch.tintColor
        let dupeFactWatch: String? = funFactLabelWatch.text
        let randomCWatch = ColorModelWatch().getRandomColorWatch(dupeColorWatch)
        let randomFWatch = funFactLabelWatch().getRandomFactWatch(dupeFactWatch!)
          backgroundColor = randomCWatch
        funFactButtonWatch.tintColor = randomCWatch //ColorModel().getRandomColor()
        funFactLabelWatch.text = randomFWatch
    }

}
