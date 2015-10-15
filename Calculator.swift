//
//  Calculator.swift
//  MayTinh
//
//  Created by phuoc on 10/14/15.
//  Copyright © 2015 phuocmt. All rights reserved.
//

import Foundation

class Calculator {
    var firstNumber: Int!
    var secondNumber: Int!
    var operation = ""
    var result: Int!
    init()
{
    self.firstNumber = 0
    self.secondNumber = 0
    self.operation = ""
    self.result = 0
}
    
    func operate()-> Int {
        
        if self.operation == "+" {
            result = firstNumber + secondNumber
        } else if self.operation == "-" {
            result = firstNumber - secondNumber
        } else if self.operation == "x" {
            result = firstNumber * secondNumber
        } else if self.operation == "/" {
            result = firstNumber / secondNumber
        }
        return result
    }
}

