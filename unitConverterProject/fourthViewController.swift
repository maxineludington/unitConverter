//
//  fourthViewController.swift
//  unitConverterProject
//
//  Created by Maxine Ludington on 7/6/17.
//  Copyright © 2017 Maxine Ludington. All rights reserved.
//

import UIKit

class fourthViewController: UIViewController {
   
    @IBOutlet weak var inputCentimetresTextField: UITextField!
    @IBOutlet weak var inputInchesTextField: UITextField!
    @IBOutlet weak var inputCentimetresResultField: UILabel!
    @IBOutlet weak var inputInchesResultField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func centimetresToInches(){
         if let amount = Double(inputCentimetresTextField.text!){
            let inches = round((0.39 * (Double(inputCentimetresTextField.text!)!)))
            inputCentimetresResultField.text = String(inches) + " in"
        }
    }
    
    func inchesToCentimetres(){
        if let amount = Double(inputInchesTextField.text!){
            let centimetres = round((1 / 0.39 * (Double(inputInchesTextField.text!)!)))
            inputInchesResultField.text = String(centimetres) + " cm"
        }
    }

    @IBAction func inputCentimetresButton(_ sender: Any) {
        centimetresToInches()
    }
    @IBAction func inputInchesButton(_ sender: Any) {
        inchesToCentimetres()
    }


}
