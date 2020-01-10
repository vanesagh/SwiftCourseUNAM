//
//  ViewController.swift
//  Rock, Paper, Cut
//
//  Created by Edgar Vilchis on 09/01/20.
//  Copyright © 2020 Edgar Vilchis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var cutButton: UIButton!
    
    var playerSelection: Sign? = nil
    var computerSelection: Sign? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        let state = controlFlux(player: playerSelection, computer: computerSelection)
        switch state {
        case .start:
            restartButton.isHidden = true
            computerLabel.text = "🤖"
            stateLabel.text = "¿Piedra, papel o tijera?"
            rockButton.isHidden = false
            cutButton.isHidden = false
            paperButton.setTitle("✋", for: .normal)
            view.backgroundColor = .gray
        case .win:
            restartButton.isHidden = false
            computerLabel.text = returnEmoji(selection: computerSelection!)
            stateLabel.text = "¡Ganaste!"
            rockButton.isHidden = true
            cutButton.isHidden = true
            paperButton.setTitle(returnEmoji(selection: playerSelection!), for: .normal)
            view.backgroundColor = .green
        case .lose:
            restartButton.isHidden = false
            computerLabel.text = returnEmoji(selection: computerSelection!)
            stateLabel.text = "Perdiste"
            rockButton.isHidden = true
            cutButton.isHidden = true
            paperButton.setTitle(returnEmoji(selection: playerSelection!), for: .normal)
            view.backgroundColor = .red
        case .tie:
            restartButton.isHidden = false
            computerLabel.text = returnEmoji(selection: computerSelection!)
            stateLabel.text = "¡Empate!"
            rockButton.isHidden = true
            cutButton.isHidden = true
            paperButton.setTitle(returnEmoji(selection: playerSelection!), for: .normal)
            view.backgroundColor = .white
        }
    }
    func returnEmoji(selection: Sign) -> String{
        switch selection{
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .cut:
            return "✌️"
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton){
    if controlFlux(player: playerSelection, computer: computerSelection) == .start{
        computerSelection = randomSign()
        let selection = sender.currentTitle
        switch selection{
        case "👊":
            playerSelection = .rock
        case "✋":
            playerSelection = .paper
        case "✌️":
            playerSelection = .cut
        default:
            playerSelection = nil
        }
        updateUI()
    }
}
    
    @IBAction func actionRestartButton(_ sender: UIButton){
        playerSelection = nil
        computerSelection = nil
        updateUI()
    }

}

//playerSelection = nil
//computerSelection = nil
//updateUI()
