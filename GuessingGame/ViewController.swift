//
//  ViewController.swift
//  GuessingGame
//
//  Created by Chatterjee, Snigdhaman on 13/12/15.
//  Copyright © 2015 Chatterjee, Snigdhaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var outputField: UILabel!
    
    @IBAction func goButton(sender: AnyObject) {
        let randNumber = Int(arc4random_uniform(5) + 1)
        if textField.text!.isEmpty {
            outputField.text = "Please enter a value"
            return
        }
        let inputNumber = Int(textField.text!)!
        if inputNumber >= 1 && inputNumber <= 6 {
            if randNumber == inputNumber {
                outputField.text = "Congratulations!! You have won the lottery!!"
            }
            else {
                outputField.text = "Sorry it was \(randNumber)!! Please try again!!"
            }
        }
        else {
            outputField.text = "Please enter value between 1 and 6"
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

