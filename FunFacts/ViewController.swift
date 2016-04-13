//
//  ViewController.swift
//  FunFacts
//
//  Created by Pasan Premaratne on 10/22/15.
//  Copyright © 2015 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
    
    let factModel = FactModel()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dupeColor = funFactButton.tintColor
        let dupeFact: String? = funFactLabel.text
        let randomC = ColorModel().getRandomColor(dupeColor)
        let randomF = FactModel().getRandomFact(dupeFact!)
        view.backgroundColor = randomC //ColorModel().getRandomColor(dupeColor)
        funFactButton.tintColor = randomC //ColorModel().getRandomColor()
        funFactLabel.text = randomF
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    
    
    @IBAction func showFunFact() {

        let dupeColor = funFactButton.tintColor
        let dupeFact: String? = funFactLabel.text
        let randomC = ColorModel().getRandomColor(dupeColor)
        let randomF = FactModel().getRandomFact(dupeFact!)
        view.backgroundColor = randomC //ColorModel().getRandomColor(dupeColor)
        funFactButton.tintColor = randomC //ColorModel().getRandomColor()
        funFactLabel.text = randomF
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

