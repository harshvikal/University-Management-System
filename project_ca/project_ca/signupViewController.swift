//
//  signupViewController.swift
//  project_ca
//
//  Created by Student on 02/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class signupViewController: UIViewController {
    var arr=[String:String]()
    
    @IBOutlet weak var pas: UITextField!
    @IBOutlet weak var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sign(_ sender: Any) {
        
        arr[email.text!]=pas.text!
        performSegue(withIdentifier: "s2", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let obj=segue.destination as! loginViewController
        obj.detail=arr
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
