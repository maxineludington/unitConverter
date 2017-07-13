//
//  thirdViewController.swift
//  unitConverterProject
//
//  Created by Maxine Ludington on 7/6/17.
//  Copyright © 2017 Maxine Ludington. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {
    
    @IBOutlet weak var myNameLabel: UILabel!
    @IBOutlet weak var fahrenheitTextField: UITextField!
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fInCLabel: UILabel!
    @IBOutlet weak var cInFLabel: UILabel!
    
    var byKat = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myNameLabel.text = "\(byKat)"
    }
    
    func convertToCelsius(){
        if let amount = Double(fahrenheitTextField.text!){
            let celsius = round((5.0 / 9.0 * (Double(fahrenheitTextField.text!)! - 32.0)))
            fInCLabel.text = String(celsius) + " °C"
        }
    }
    
    func convertToFahrenheit(){
        if let amount = Double(celsiusTextField.text!){
            let fahrenheit = round(Double(celsiusTextField.text!)! * 9.0 / 5.0  + 32.0)
            cInFLabel.text = String(fahrenheit) + " °F"
        }
    }
    
    @IBAction func fInCButtonPressed(_ sender: Any) {
        convertToCelsius()
    }
    @IBAction func cInFButtonPressed(_ sender: Any) {
        convertToFahrenheit()
    }
}
