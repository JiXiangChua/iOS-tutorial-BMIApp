//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by JI XIANG on 8/7/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String? //we want to set this variable to a optional string by adding the question mark
    //Becuz when we run this class, we dont know what is the bmiValue gonna be. Its only after the button is pressed and the bmi is calculated, then we have a string value for this variable.
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice // no need unwrap, "!", here, becuz the text property already expecting an optional datatype value
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil) //dismiss our current viewcontroller which goes back to the previous screen
        //again, here the self refer to this class. And we are using a method from this class which inherited from the UIViewController
        //becuz this view is "stack" on top of the main screen.
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
