//
//  ViewController.swift
//  TipCalculator
//
//  Created by Guozheng Ge on 12/20/14.
//  Copyright (c) 2014 Guozheng Ge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var totalTextField: UITextField!
    @IBOutlet var taxPctSlider: UISlider!
    @IBOutlet var taxPctLabel: UILabel!
    @IBOutlet var resultsTextView: UITextView!
    
    let TipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
    
    func refreshUI() {
        totalTextField.text = String(format: "%0.2f", TipCalc.total)
    }
    
    @IBAction func resetTapped(sender: AnyObject) {
        
    }
    
    @IBAction func calculateTapped(sender: AnyObject) {
        
    }
    
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        
    }
    
    @IBAction func viewTapped(sender: AnyObject) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

