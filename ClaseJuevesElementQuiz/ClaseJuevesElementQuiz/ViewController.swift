//
//  ViewController.swift
//  ClaseJuevesElementQuiz
//
//  Created by 2020-2 on 09/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let elementList = ["Carbon","Chlorine","Gold", "Sodium"]
    var currentElementIndex = 0
    
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateElement()
    }
    
    func updateElement(){
        answerLabel.text = "¿?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    
    @IBAction func nextElement(_ sender: Any) {
        currentElementIndex += 1
        currentElementIndex = currentElementIndex % 4
        updateElement()
        
        
    }
    
}

