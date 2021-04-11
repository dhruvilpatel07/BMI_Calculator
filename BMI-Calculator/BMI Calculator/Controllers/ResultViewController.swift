//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Dhruvil Patel on 2021-04-11.
//  Copyright © 2021 Dhruvil Patel. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bmiValue = bmiValue {
            bmiLabel.text = bmiValue
        }
        if let safeAdvice = advice{
            adviceLabel.text = safeAdvice
        }
        if let safeColor = color{
            view.backgroundColor = safeColor
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
