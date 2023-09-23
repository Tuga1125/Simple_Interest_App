//
//  ViewController.swift
//  Simple_Interest_App
//
//  Created by Tooga Garanja Magar on 2023-09-23.
//

import UIKit

class ViewController: UIViewController {
    //reference object for UI controls
    
    @IBOutlet weak var PrincipleTextField: UITextField!
    
    
    @IBOutlet weak var TimeTextField: UITextField!
    
    
    @IBOutlet weak var RateTextField: UITextField!
    
    
    @IBOutlet weak var InterestTextField: UITextField!
    
    @IBOutlet weak var AmountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OnCLickCalculate(_ sender: Any) {
            // Check if all text fields have valid values
            guard let principleText = PrincipleTextField.text, let principle = Double(principleText),
                let timeText = TimeTextField.text, let time = Double(timeText),
                let rateText = RateTextField.text, let rate = Double(rateText)
                else {
                    // Handle invalid input here and show error message to the user
                    return
            }

            // Calculate interest amount
            let interest = (principle * rate * time) / 100.0

            // Calculate total amount
            let totalAmount = principle + interest

            // Show the result in the InterestTextField and AmountTextField
            InterestTextField.text = String(interest)
            AmountTextField.text = String(totalAmount)
        }
    
    
    @IBAction func OnClearClick(_ sender: Any) {
        // Clear all text fields
                PrincipleTextField.text = ""
                TimeTextField.text = ""
                RateTextField.text = ""
                InterestTextField.text = ""
                AmountTextField.text = ""
    }
    
}

