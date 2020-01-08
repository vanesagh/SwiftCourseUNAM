//
//  ViewController.swift
//  ClaseMartesInicioDeSesion
//
//  Created by 2020-2 on 07/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    struct usuarioApp{
        var nameUser : String
        var passwordUser : String
        var realName : String
    }

   
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    var cuenta = usuarioApp(nameUser: "CessieBe", passwordUser: "123", realName: "Cecilia")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func siguienteButton(_ sender: Any) {
        if (userText.text == cuenta.nameUser) {
            if (passwordText.text == cuenta.passwordUser){
                
            }
        }
    }
    
}

