//
//  ViewController.swift
//  claseMartesColorMixApp
//
//  Created by 2020-2 on 07/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    
 
    @IBOutlet weak var redSlide: UISlider!
    @IBOutlet weak var blueSlide: UISlider!
    @IBOutlet weak var greenSlide: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateColor(){
        var red: CGFloat = 0
        var blue: CGFloat = 0
        var green: CGFloat = 0
        if (redSwitch.isOn){
            red = CGFloat(redSlide.value)
        }
        if (blueSwitch.isOn){
            blue = CGFloat(blueSlide.value)
        }
        if (greenSwitch.isOn){
            green = CGFloat(greenSlide.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }

    
    @IBAction func botonSwitch(_ sender: UISwitch) {
//        if sender.isOn{
//            colorView.backgroundColor = .red
//        } else {
//            colorView.backgroundColor = .black
//        }
        updateColor()
    }
    
    @IBAction func sliderChange(_ sender: Any) {
        updateColor()
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        redSwitch.isOn = false
        blueSwitch.isOn = false
        greenSwitch.isOn = false
        
        redSlide.setValue(1.0, animated: true)
        blueSlide.setValue(1.0, animated: true)
        greenSlide.setValue(1.0, animated: true)
        colorView.backgroundColor = .black
        
    }
    
    
}

