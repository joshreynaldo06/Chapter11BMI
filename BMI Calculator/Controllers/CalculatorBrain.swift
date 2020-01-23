//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Joshua Citra on 23/01/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    
    var bmi : Float?
    
   mutating func calculatedBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String{
        if bmi != nil{
            let result = String(format: "%.1f", bmi!)
            return result
        } else {
            return "0.0"
        }
        
        
    }
}
