//
//  ViewController.swift
//  project_ca
//
//  Created by Student on 01/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
var name=""
    
    @IBOutlet weak var wv: WKWebView!
    @IBOutlet weak var incom: UITextField!
    @IBOutlet weak var showname: UILabel!
    @IBOutlet weak var outp: UILabel!
    @IBOutlet weak var actual: UILabel!
    @IBOutlet weak var toggle1: UISwitch!
    @IBOutlet weak var toggle: UIButton!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var calculate_income: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showname.text="Hi \(name) :) "
    }

    @IBAction func cal(_ sender: Any) {
        if var income=Double(incom.text!){
        var Age=Double(age.text!)
            
            var incomeTax=calculateincometax(income,Age: Age!)
            outp.text="Income Tax: INR \(incomeTax)"
            var act=income-incomeTax
            actual.text="Actual income will be : INR \(act)"
        }
        else {
            
            outp.text="Please enter a valid income amount"
             actual.text="Actual income will be : INR 0.0"
        }
   
    }
    func calculateincometax(_ income: Double, Age: Double)-> Double{
        var tax : Double = 0
        if Age<=60 {
            if income<=300000{
                tax=0
            }
            else if income>300000 && income<=6000000{
                tax=(income-300000)*0.05
            }
            else if income>600000 && income<=900000{
                tax=((income-600000)*0.10 )+15000
            }
            else if income>900000 && income<=1200000{
                tax=((income-900000)*0.15) + 45000
            }
            else if income>1200000 && income<=1500000{
                tax=((income-1200000)*0.20) + 90000
            }
            else if income>1500000{
                tax=((income-1500000)*0.30) + 150000
                
            }
        }
        else if Age>80 {
            if income<=300000{
                tax=0
            }
            else if income>300000 && income<=5000000{
                tax=(income-300000)*0.05
            }
            else if income>500000 && income<=1000000{
                tax=((income-600000)*0.20 )
            }
            else if income>1000000 {
                tax=(income-100000)*0.30
            }
            
        }
        else if Age>60 && Age<=80 {
            if income<=300000{
                tax=0
            }
            else if income>300000 && income<=500000{
                tax=(income-300000)*0.05
            }
            else if income>500000 && income<=1000000{
                tax=((income-500000)*0.20 )
            }
            else if income>1000000 {
                tax=(income-100000)*0.30
            }
          
        }
       
        return tax
    }
    
    @IBAction func dark(_ sender: Any) {
    }
    @IBAction func darkmode(_ sender: Any) {
        if toggle1.isOn {
            view.backgroundColor = .darkGray
            
        }
        else {
             view.backgroundColor = .white
        }
    }
    @IBAction func site(_ sender: Any) {
        if(true){
            performSegue(withIdentifier: "s4", sender: nil)
        }
    }
    
    
    @IBAction func rating(_ sender: Any) {
        if(true){
            performSegue(withIdentifier: "s5", sender: nil)
        }
    }
    
}

