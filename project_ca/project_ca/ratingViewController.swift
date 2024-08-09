//
//  ratingViewController.swift
//  project_ca
//
//  Created by Student on 04/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ratingViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lab: UILabel!
    @IBOutlet weak var rate: UISlider!
    
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func rating(_ sender: UISlider) {

            let x =  Int (sender.value)
            lab.text = "RATE OUR APP: \(x) ⭐"
            
            switch x {
            case 1:
                img.image = UIImage(imageLiteralResourceName: "6")
                
            case 2:
                img.image = UIImage(imageLiteralResourceName: "3")
                
            case 3:
                img.image = UIImage(imageLiteralResourceName: "2")
                
            case 4:
                img.image = UIImage(imageLiteralResourceName: "1")
                
            case 5:
                img.image = UIImage(imageLiteralResourceName: "5")
                
            default:
                img.image = UIImage(imageLiteralResourceName: "3")
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

