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
    //@IBOutlet var funFactLabelWatch: WKInterfaceLabel!
    @IBOutlet var funFactLabelWatch: WKInterfaceLabel!
    @IBOutlet var funFactButtonWatch: WKInterfaceButton!
    
    @IBOutlet var funFactImageWatch: WKInterfaceImage!
    let factModelWatch = FactModelWatch()
    let colorModelWatch = ColorModelWatch()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        funFactLabelWatch.setText(factModelWatch.getRandomFactWatch())
        //let dupeImageWatch: UIImage = funFactImageWatch.image
        funFactImageWatch.setImage(ImageModelWatch().getRandomImageWatch())
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        //let dupeColorWatch = funFactButtonWatch.setTitle(funFactButtonWatch)
        //init randomFWatch
        
       // let randomFWatch: String
        
        
        //let randomCWatch = ColorModelWatch().getRandomColorWatch(dupeColorWatch: dupeColorWatch!)
        
        //view.backgroundColor = randomCWatch //ColorModel().getRandomColor(dupeColor)
        //funFactButtonWatch.tintColor = randomCWatch //ColorModel().getRandomColor()
        //funFactLabelWatch.text = randomFWatch
        
        
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
        let randomFWatch : String = factModelWatch.getRandomFactWatch()

        funFactLabelWatch.setText(randomFWatch) //.getRandomFactWatch(dupeFact!)))
        funFactImageWatch.setImage(ImageModelWatch().getRandomImageWatch())
        
        
    }

}
