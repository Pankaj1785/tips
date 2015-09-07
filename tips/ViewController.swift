//
//  ViewController.swift
//  tips
//
//  Created by Pankaj Manghnani on 9/7/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text="$0.00";
        totalLabel.text="$0.00";
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentages=[0.18,0.20,0.22]
        let tipPercentage=tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount=(billField.text! as NSString).doubleValue
        let tip=billAmount * tipPercentage
        let total=billAmount+tip
        
        tipLabel.text=String(format: "$%.2f",tip)
        totalLabel.text=String(format: "$%.2f",total)
    
    }
}
