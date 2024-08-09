//
//  WEBViewController.swift
//  project_ca
//
//  Created by Student on 04/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class WEBViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.    }
    
        var obj=URL(string: "https://incometaxindia.gov.in/Pages/default.aspx")
       wv.loadRequest(URLRequest(url: obj!))
    

}

   
    @IBOutlet weak var wv: UIWebView!
}
