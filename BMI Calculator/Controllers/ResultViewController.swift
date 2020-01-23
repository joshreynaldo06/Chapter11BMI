//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Joshua Citra on 23/01/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController{
    
    var bmiValue: String?   
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculateClicked(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }
}
