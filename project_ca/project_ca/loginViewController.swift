//
//  loginViewController.swift
//  project_ca
//
//  Created by Student on 02/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
    var detail=[String:String]()
    
    @IBOutlet weak var pas1: UITextField!
    @IBOutlet weak var email1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        for (key,value) in detail {
            if (key==email1.text! ) && (value==pas1.text!){
                performSegue(withIdentifier: "s3", sender: nil)
                let al=UIAlertController(title: "Congratulation", message: "You have loged in ", preferredStyle: .alert)
//                let a=UIAlertAction(title: "ok", style: .default)
                let b=UIAlertAction(title: "Cancle", style: .cancel)
                al.addAction(b)
//                 al.addAction(a)
                present(al, animated: true)
            }
            else {
                
            }
        }
    }
    
    @IBAction func new_acount(_ sender: Any) {
        performSegue(withIdentifier: "s1", sender:nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="s3"{
            let obj=segue.destination as! ViewController
            obj.name=email1.text!
        }
        else if segue.identifier=="s1"{
            let obj=segue.destination as!signupViewController
            obj.arr=detail
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
