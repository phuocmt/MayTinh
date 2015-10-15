//
//  ViewController.swift
//  MayTinh
//
//  Created by phuoc on 10/14/15.
//  Copyright © 2015 phuocmt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    // OUTLET
    
    @IBOutlet var numberBtns : Array<UIButton>!
    @IBOutlet var calcBtns : Array<UIButton>!
    @IBOutlet weak var equalBtn: UIButton!
    
    // property
    let calculator = Calculator()
    var isTypingNumber = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
          }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var calculatorDisplay: UILabel!
    @IBAction func tapNumber(sender: UIButton) {
        let number = sender.currentTitle
       
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!
        } else
        {
            calculatorDisplay.text = number
            isTypingNumber = true
        }

        
    }

    @IBAction func tapCalc(sender: UIButton) {
        isTypingNumber = false
        calculator.firstNumber = Int(calculatorDisplay.text!)
        
        calculator.operation = sender.currentTitle!
           }
    @IBAction func tapEqual(sender: UIButton) {
        isTypingNumber = false
        
        calculator.secondNumber = Int(calculatorDisplay.text!)
        
        calculatorDisplay.text = String(calculator.operate())
        
    }
}

