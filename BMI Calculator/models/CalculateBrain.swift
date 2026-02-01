//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by uma kumari on 15/01/26.
//  Copyright © 2026 Angela Yu. All rights reserved.
//

import Foundation

struct CalculateBrain{
    var bmiVal: Float = 0.0
   mutating func calculateBmi(height: Float, weight: Float){
        bmiVal = weight / (height * height)
        
    }
    
    func getBMIValue() -> String {
        let cal1DecialNumber = String(format: "%.1f", bmiVal)
        return cal1DecialNumber
    }
}
