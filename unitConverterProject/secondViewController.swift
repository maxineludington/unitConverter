//
//  secondViewController.swift
//  unitConverterProject
//
//  Created by Maxine Ludington on 7/6/17.
//  Copyright © 2017 Maxine Ludington. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var inputFeetTextField: UITextField!
    @IBOutlet weak var inputMetresTextField: UITextField!
    @IBOutlet weak var inputFeetResultField: UILabel!
    @IBOutlet weak var inputMetresResultField: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func convertToMetres() {
         if let amount = Double(inputFeetTextField.text!){
            let metres = round(1.00 / 3.28 * Double(inputFeetTextField.text!)!)
            inputFeetResultField.text = String(metres) + " m"
        }
    }
    
    func convertToFeet() {
         if let amount = Double(inputMetresTextField.text!){
            let feet = round(3.28 * Double(inputMetresTextField.text!)!)
            inputMetresResultField.text = String(feet) + " ft"
        
        }
    }
    
    @IBAction func inputFeetButton(_ sender: Any) {
        convertToMetres()
    }
    @IBAction func inputMetresButton(_ sender: Any) {
        convertToFeet()
    }
}
