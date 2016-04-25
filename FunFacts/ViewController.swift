//
//  ViewController.swift
//  FunFacts
//
//  Created by Pasan Premaratne on 10/22/15.
//  Copyright © 2015 Treehouse. All rights reserved.
//

import Foundation
import UIKit
import GameKit

class ViewController: UIViewController {
    

    @IBOutlet weak var funFactSwitch: UISwitch!
    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
    
    let factModel = FactModel()
  
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor(red: 1/255.0, green: 1/255.0, blue: 1/255.0, alpha: 1.0)
        super.viewDidLoad()
        let dupeColor = funFactButton.tintColor
        let dupeFact: String? = funFactLabel.text
        let randomC = ColorModel().getRandomColor(dupeColor)
        let randomF = FactModel().getRandomFact(dupeFact!)
        //view.backgroundColor = randomC //ColorModel().getRandomColor(dupeColor)
        funFactButton.tintColor = randomC //ColorModel().getRandomColor()
        funFactLabel.text = randomF
        //funFactSwitch.setOn(true, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    
    
    @IBAction func showFunFact() {
        if funFactSwitch.on == true {
           print(funFactSwitch.on)
            let randomC = UIColor(red: 1/255.0, green: 1/255.0, blue: 1/255.0, alpha: 1)
            view.backgroundColor = randomC
            funFactButton.tintColor = randomC
        } else {
        let dupeColor = funFactButton.tintColor
        //let dupeFact: String? = funFactLabel.text
        //let switchState: Bool = false
        //print(funFactSwitch.on)
        
            let randomC = ColorModel().getRandomColor(dupeColor)
            view.backgroundColor = randomC
            funFactButton.tintColor = randomC
        }
        let dupeFact: String? = funFactLabel.text
        let randomF = FactModel().getRandomFact(dupeFact!)
        funFactLabel.text = randomF
        
    }


}