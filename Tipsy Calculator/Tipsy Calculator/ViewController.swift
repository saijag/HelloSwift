//
//  ViewController.swift
//  Tipsy Calculator
//
//  Created by Sai Jagtap on 3/13/17.
//  Copyright © 2017 jagsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmt: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    @IBOutlet weak var sharesCount: UITextField!
    @IBOutlet weak var eachShare: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func onTap(_ sender: AnyObject) {
//        print("hey")
        view.endEditing(true)
    }
    
    @IBAction func calculation(_ sender: AnyObject) {
        let tipPercentages=[0.15,0.18,0.2,0.22]
        let bill = Double(billAmt.text!) ?? 0
        let tip = bill*tipPercentages[tipSelector.selectedSegmentIndex]
        let total = tip+bill
        let shares = Double(sharesCount.text!) ?? 1
        let aShare = total/shares
        
        
        tipLabel.text=String(format:"$%.2f",tip)
        totalLabel.text=String(format:"$%.2f",total)
        eachShare.text = String(format: "$%.2f",aShare)
    }

}

