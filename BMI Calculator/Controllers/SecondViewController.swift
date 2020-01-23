//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Joshua Citra on 23/01/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController : ViewController{
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        
        view.backgroundColor = .red
        
        super.viewDidLoad()
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
