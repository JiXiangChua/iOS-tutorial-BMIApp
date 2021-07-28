//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by JI XIANG on 8/7/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit //everything starts from UI comes from this UIKit framework
//UIkit already has foundation framework so we can exclude import foundation

class SecondViewController: UIViewController {//name the class the same name as the file name
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
        //codes that will show when it first load up
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50) //reactangle at position (0,0)
        view.addSubview(label) //adding label component to the view container so that we can see it
        
    }
}
