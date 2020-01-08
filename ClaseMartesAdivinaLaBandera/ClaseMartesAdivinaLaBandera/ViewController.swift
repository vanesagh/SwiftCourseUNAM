//
//  ViewController.swift
//  ClaseMartesAdivinaLaBandera
//
//  Created by 2020-2 on 07/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonOne: UIButton!
    
   
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var buttonThree: UIButton!
    var countries = [String]()
    var rightAnswer = 0
    var score = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        buttonOne.layer.borderWidth = 1
        buttonOne.layer.borderColor = UIColor.lightGray.cgColor
        
        buttonTwo.layer.borderWidth = 1
        buttonTwo.layer.borderColor = UIColor.lightGray.cgColor
        
        buttonThree.layer.borderWidth = 1
        buttonThree.layer.borderColor = UIColor.lightGray.cgColor
        
        
        countries.append("estonia")
        countries += ["france","germany", "ireland","italy", "monaco", "nigeria", "poland", "russia", "spain","uk", "us"]
        question(action: nil)
        
        
        // Do any additional setup after loading the view.
    }
    func question(action: UIAlertAction!){
        countries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countries) as! [String]
        buttonOne.setImage(UIImage(named: countries[0]), for: .normal)
        
        buttonTwo.setImage(UIImage(named: countries[1]), for: .normal)
        
        buttonThree.setImage(UIImage(named: countries[2]), for: .normal)
        
        rightAnswer = GKRandomSource.sharedRandom().nextInt(upperBound: 3)
        title = countries[rightAnswer].uppercased()
        
        
        
    }


    @IBAction func buttonSelect(_ sender: UIButton) {
        var title : String
        if(sender.tag == rightAnswer){
            title = "Right Answer!"
            score += 1
        }
        else {
            title = "Wrong Answer"
            score -= 1
        }
        print(score)
        let ac = UIAlertController(title: title , message: "Your score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: question))
        present(ac, animated: true)
    }
}

