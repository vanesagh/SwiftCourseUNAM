//
//  ViewController.swift
//  ClaseViernesPPTGameApp
//
//  Created by 2020-2 on 09/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var userSelection = 0

    @IBOutlet weak var displayLabel: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func piedraButton(_ sender: Any) {
        userSelection = 1
    }
    
    
    @IBAction func papelButton(_ sender: Any) {
    }
    
    
    @IBAction func tijeraButton(_ sender: Any) {
    }
    
    @IBAction func jugarDenuevoButton(_ sender: Any) {
    }
}

