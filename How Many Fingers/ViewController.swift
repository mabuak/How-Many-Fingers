//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Fachruzi Ramadhan on 16/08/2018.
//  Copyright © 2018 dhanhost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    
    @IBOutlet var fingersTextField: UITextField!
    
    @IBAction func guessButton(_ sender: Any) {
        let diceRoll = String(arc4random_uniform(6))
        
        if( fingersTextField.text == diceRoll){
            
            resultLabel.text = "You're right!"
            
        } else {
            
            resultLabel.text = "Wrong! It was a " + diceRoll + "."
            
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

