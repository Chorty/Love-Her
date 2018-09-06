//
//  ViewController.swift
//  FunFactsTV
//
//  Created by Matt Joslin on 4/4/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabelTV: UILabel!
    @IBOutlet weak var funFactButtonTV: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dupeColor = funFactButtonTV.tintColor
        let dupeFact: String? = funFactLabelTV.text
        let randomC = ColorModelTV().getRandomColorTV(dupeColor: dupeColor!)
        let randomF = FactModelTV().getRandomFactTV(dupeFact: dupeFact!)
        view.backgroundColor = randomC
        funFactButtonTV.tintColor = randomC //ColorModel().getRandomColor()
        funFactLabelTV.text = randomF
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showFunFactTV() {
        let dupeColor = funFactButtonTV.tintColor
        let dupeFact: String? = funFactLabelTV.text
        let randomC = ColorModelTV().getRandomColorTV(dupeColor: dupeColor!)
        let randomF = FactModelTV().getRandomFactTV(dupeFact: dupeFact!)
        view.backgroundColor = randomC
        funFactButtonTV.tintColor = randomC //ColorModel().getRandomColor()
        funFactLabelTV.text = randomF
    }

}

