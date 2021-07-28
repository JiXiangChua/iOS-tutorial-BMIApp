//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by JI XIANG on 10/7/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI? //BMI model datatype
    
    //getters/setters
    func getBMIValue() -> String {
        let bmiTo1DP = String(format: "%.1f", bmi?.value ?? 0.0) //using the nil coalescing operator for optional datatype
        return bmiTo1DP //becuz we need to pass back a string datatype back to the caller.
        
    }
    func getAdvice() -> String?{
        return bmi?.advice ?? "No advice" //tap into the advice property if bmi exist. if bmi is nil, then it means advice is also nil
        //so we need to give a default value in case our bmi = nil.
    }
    
    func getColor() -> UIColor?{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) //default value is white if the bmi = nil or the color property = nil.
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if (bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)) //struct automatically has a init without writing it in the BMI.swift file
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)) //struct automatically has a init without writing it in the BMI.swift file
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)) //struct automatically has a init without writing it in the BMI.swift file
        }
        
        
    }
    
    
}
