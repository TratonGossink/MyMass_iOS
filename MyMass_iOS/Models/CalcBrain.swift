//
//  CalcBrain.swift
//  MyMass_iOS
//
//  Created by Traton Gossink on 4/6/23.
//

import UIKit

struct CalculatorBrain {
    
    //    var resultsViewController = ResultsViewController()
    
    var bmi: BMI?
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Might wanna consume more healthy calories.", color: UIColor.blue)
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Stuck in the avergage.", color: UIColor.green)
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Healthy diet and excercise may benefit you.", color: UIColor.red)
        }
    }
    func getBMIValue() -> String{
        let bmiDecPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "I gots Nothing for you."
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.green
    }
}
