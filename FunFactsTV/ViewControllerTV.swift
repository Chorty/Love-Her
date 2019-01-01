//
//  ViewController.swift
//  FunFactsTV
//
//  Created by Matt Joslin on 4/4/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewControllerTV: UIViewController {

    @IBOutlet weak var funFactLabelTV: UILabel!
    @IBOutlet weak var funFactButtonTV: UIButton!
    @IBOutlet weak var funFactImageTV: UIImageView!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dupeColorTV = funFactButtonTV.tintColor
        let dupeFactTV = funFactLabelTV.text
        let randomCTV = ColorModelTV().getRandomColorTV(dupeColorTV: dupeColorTV!)
        let randomFTV = FactModelTV().getRandomFactTV(dupeFactTV: dupeFactTV!)
        view.backgroundColor = randomCTV
        funFactButtonTV.tintColor = randomCTV //ColorModel().getRandomColor()
        funFactLabelTV.text = randomFTV
    }

 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func funFactButtonTVFunc() {
        let dupeColorTV = funFactButtonTV.tintColor
        let dupeFactTV: String? = funFactLabelTV.text
        let dupeImageTV: UIImage = funFactImageTV.image ?? #imageLiteral(resourceName: "7")
        let randomCTV = ColorModelTV().getRandomColorTV(dupeColorTV: dupeColorTV!)
        let randomFTV = FactModelTV().getRandomFactTV(dupeFactTV: dupeFactTV!)
        let randomITV = ImageModelTV().getRandomImageTV(dupeImageTV: dupeImageTV)
        view.backgroundColor = randomCTV
        funFactButtonTV.tintColor = randomCTV //ColorModel().getRandomColor()
        funFactLabelTV.text = randomFTV
        funFactImageTV.image = randomITV
        
    }
}

