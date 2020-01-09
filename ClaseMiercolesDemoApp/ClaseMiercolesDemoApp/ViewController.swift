//
//  ViewController.swift
//  ClaseMiercolesDemoApp
//
//  Created by 2020-2 on 08/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userField: UITextField!
    
    @IBOutlet var passwordField: UITextField!
    
    var name = "cessie"
    var password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func botonRojo(_ sender: Any) {
        if (name == userField.text){
            if (password == passwordField.text){
                performSegue(withIdentifier: "green", sender: nil)
                
            }
            
        }
        
    }
}

