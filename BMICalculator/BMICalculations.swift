//
//  BMICalculations.swift
//  BMICalculator
//
//  Created by Cormell, David - DPC on 24/02/2022.
//

import Foundation



class BMICalculations {


    func calculateBmi(weight: Double, height: Double) -> Double {
        let heightMeters = height / 100
        return (weight/(heightMeters*heightMeters)).rounded(toPlaces: 1)
    }
    
    func lookUpBmiClassification(bmi: Double) -> String {
        if bmi < 18.5 {
            return "Underweight"
        }
        else if bmi >= 18.5 && bmi < 25 {
            return "Healthy"
        }
        else if bmi >= 25 && bmi < 30 {
            return "Overweight"
        }
        else if bmi >= 30 {
            return "Obese"
        }
        else {
            return "Invalid"
        }
    }
}
