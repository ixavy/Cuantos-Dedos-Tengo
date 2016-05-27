//
//  ViewController.swift
//  Cuantos Dedos Tengo
//
//  Created by iXavy on 27/5/16.
//  Copyright © 2016 iXavy. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var arrayNumber = [UInt32]()
    
    let maxNumber:UInt32 = 10

    @IBOutlet weak var inputFingers: UITextField!
    
    @IBOutlet weak var outputText: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        let randomFingers = arc4random_uniform(maxNumber)
        
        if inputFingers.text == "" {
            outputText.text = "Introduce un número del 0 al 9"
        } else {
            if let numberInput = inputFingers.text {
                if UInt32(numberInput) == randomFingers {
                    outputText.text = "ACERTASTE !!!. El número era \(randomFingers)"
                } else {
                    outputText.text = "FALLASTE !!!. El número era \(randomFingers)"
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

