//
//  ViewController.swift
//  ClaseViernesPPTGameApp
//
//  Created by 2020-2 on 09/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var playerSelection : Sign? = nil
    var computerSelection : Sign? = nil

   
    
    @IBOutlet weak var martianLabel: UILabel!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var jugarDeNuevoButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    
    @IBOutlet weak var cutButton: UIButton!
    
    @IBOutlet weak var rockButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func returnEmoji(selection: Sign) -> String{
        switch selection {
        case .rock:
            return "👊🏽"
        case .paper:
            return "🖐"
        
        case .cut:
            return "✌🏽"
        }
    }
    
    func updateUI(){
        let state = controlFlux(player: playerSelection, computer: computerSelection)
        switch state {
        case .start:
            jugarDeNuevoButton.isHidden = true
            martianLabel.text = "👾"
            displayLabel.text = "¿Piedra, papel o tijera?"
            rockButton.isHidden = false
            paperButton.isHidden = false
            cutButton.setTitle("✌🏽", for: .normal)
            view.backgroundColor = .gray
        case .win:
            displayLabel.text = returnEmoji(selection: computerSelection!)
            martianLabel.text = "Ganaste"
            rockButton.isHidden = true
            paperButton.isHidden = true
            cutButton.setTitle(returnEmoji(selection: playerSelection!), for: .normal)
            view.backgroundColor = .green
            
        case .lose:
            displayLabel.text = returnEmoji(selection: computerSelection!)
            martianLabel.text = "Perdiste"
            rockButton.isHidden = true
            paperButton.isHidden = true
            cutButton.setTitle(returnEmoji(selection: playerSelection!), for: .normal)
            view.backgroundColor = .red
        
        case .tie:
            displayLabel.text = returnEmoji(selection: computerSelection!)
            martianLabel.text = "Empate"
            rockButton.isHidden = true
            paperButton.isHidden = true
            cutButton.setTitle(returnEmoji(selection: playerSelection!), for: .normal)
            view.backgroundColor = .white
        
        }
    }

    
    
 
    @IBAction func buttonPressed(_ sender : UIButton){
        if controlFlux(player: playerSelection, computer: computerSelection) == .start {
            computerSelection = randomSign()
            let selection = sender.currentTitle
            switch selection {
            case "👊🏽":
                playerSelection = .rock
            case "✋🏿":
                playerSelection = .paper
            case "✌🏽":
                playerSelection = .cut
        
            default:
                playerSelection = nil
            }
            updateUI()
            
        }
    }
    
    @IBAction func actionrestartButton (_ sender: UIButton){        playerSelection = nil
        computerSelection = nil
    }
}

