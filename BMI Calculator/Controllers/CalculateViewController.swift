//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider! //so that we can access their value / property without needing them to perform an action.
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        //print(String(format: "%.2f", sender.value))
        let height = String(format: "%.2f m", sender.value)
        heightLabel.text = height
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        //print(Int(sender.value))
        let weight = String(format: "%.0f Kg", sender.value)
        weightLabel.text = weight
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        //print(heightSlider.value)
        //print(weightSlider.value)
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi) //pass the value over to the second controller by updating the class's attribute. 
//
//        self.present(secondVC, animated: true, completion: nil) //the self here refers to this class ViewController
//        //present another viewcontroller
//        //present animation = true so that it had a little animaton when the transition happens
//        //completion is nil, once the animation and presentation is done, i dont want it to do anything else.
        
        //Using segue to transit to another screen
        self.performSegue(withIdentifier: "goToResult", sender: self) //make sure you name your identifier of the segue
        //sender is this class, which we can refer to it as self
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // we have to override this function before performing segue navigation
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            //the as! specify the exact destination data type.
            //becuz we want to access the variable of the class, therefore we want destinationVC to be a class datatype
            //by default segue.destination is a UIViewController datatype and therefore we cannot access the variable that is declared in a Class datatype.
            // The as! is performing downcasting. Downcasting from a UIViewController to a ResultViewController which inherited from the UIViewController
            //The ! means forcefully, therefore as! means force downcast
            destinationVC.bmiValue = calculatorBrain.getBMIValue() //passing over a formatted string
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

