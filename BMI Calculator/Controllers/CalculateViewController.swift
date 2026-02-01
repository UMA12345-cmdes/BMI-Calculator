//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var bmiValues = "0.0"
    let calculateBrains = CalculateBrain()

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightS: UISlider!
    @IBOutlet weak var weightS: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
      let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
        }
    
    @IBAction func weightSlider(_ sender: UISlider) {
       let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightS.value;
        let weight = weightS.value
        
//        let bmi = weight / pow(height, 2)
//        let bmi = weight / (height*height)
        calculateBrains.calculateBmi(height: height, weight: weight)
        
        
//        bmiValues = String(format: "%.1f", bmi)
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
//        
//        self.present(secondVC, animated: true, completion: nil)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
//            destinationVC.bmiValue = bmiValues
            destinationVC.bmiValue = calculateBrains.getBMIValue()
        }
    }
    
}

