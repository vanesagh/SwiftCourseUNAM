//
//  ViewController.swift
//  ClaseJuevesBotones
//
//  Created by 2020-2 on 09/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var cat = SimpleSound(named: "meow")
    var dog = SimpleSound(named: "woof")
    var cow = SimpleSound(named: "moo")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func selectButton(_ sender: UIButton) {
        sender.animacion()
        if (sender.tag == 1){
            dog.play()
        }
        
        if (sender.tag == 2){
            cat.play()
        }
        
        if (sender.tag == 3){
            cow.play()
        }
    }
}


