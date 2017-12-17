//
//  ViewController.swift
//  tip calculator
//
//  Created by Simona Virga on 12/14/17.
//  Copyright © 2017 Simona Virga. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var numOfPeopleTextField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPerPerson: UILabel!
    @IBOutlet weak var totalPerPerson: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any)
    {
        let percentage = [0.18, 0.2, 0.25]
        
        
        
        
        let bill = Double(billTextField.text!) ?? 0
        let numOfPeople = Double(numOfPeopleTextField.text!) ?? 0
        //print(numOfPeople)
        let tip = bill * percentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let tipPerson = tip / numOfPeople
        //print(tipPerson)
        let totalPayPerPerson = total / numOfPeople
        
        
        totalPerPerson.text = String(format: "$%.2f", totalPayPerPerson)
        tipPerPerson.text = String(format: "$%.2f", tipPerson)
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
}

