//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var bmi : Float = 0
    
    var calculator = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculator.getBMIValue()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
//        print(String(format: "%.2f m", sender.value))
        heightLabel.text = String(format: "%.2f m", sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
//        print(String(format: "%.0f kg", sender.value))
        weightLabel.text = String(format: "%.0f kg", sender.value)
    }
    
    @IBAction func calculatedPressed (_ sender: UIButton){
        let height = heightSlider.value
        let weight = weightSlider.value
        
        bmi = weight / pow(height, 2)
        
        print(bmi)
        
        
        calculator.calculatedBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "resultVC", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultVC"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculator.getBMIValue()
        }
    }
    
    
}

