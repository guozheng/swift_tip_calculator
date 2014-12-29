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
        taxPctSlider.value = Float(TipCalc.taxPct) * 100.0
        taxPctLabel.text = "Tax Percentage (\(taxPctSlider.value))%"
        resultsTextView.text = ""
    }
    
    @IBAction func resetTapped(sender: AnyObject) {
        totalTextField.text = ""
        resultsTextView.text = ""
        taxPctSlider.value = 0
        taxPctLabel.text = "Tax Percentage (\(taxPctSlider.value))%"
    }
    
    @IBAction func calculateTapped(sender: AnyObject) {
        TipCalc.total = Double((totalTextField.text as NSString).doubleValue)
        let tips = TipCalc.returnPossibleTips()
        var results = ""
        for (tipPct, tipValue) in tips {
            results += "\(tipPct)%: \(tipValue)\n"
        }
        resultsTextView.text = results
    }
    
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        TipCalc.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
    }
    
    @IBAction func viewTapped(sender: AnyObject) {
        totalTextField.resignFirstResponder()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

