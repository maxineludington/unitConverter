//
//  ViewController.swift
//  unitConverterProject
//
//  Created by Maxine Ludington on 7/5/17.
//  Copyright © 2017 Maxine Ludington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var byKat: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! thirdViewController
        dvc.byKat = byKat.text!
    }


}

