//
//  Control State.swift
//  Rock, Paper, Cut
//
//  Created by Edgar Vilchis on 09/01/20.
//  Copyright © 2020 Edgar Vilchis. All rights reserved.
//

import Foundation
//import GameplayKit

enum ControlState{
    case start
    case win
    case lose
    case tie
}

func controlFlux(player: Sign?, computer: Sign?) -> ControlState { //Sign se coloca como optional porque puede que aun no haya ninguna selección ni del jugador ni de la computadora

    if player == nil || computer == nil{
        return .start
    } else if player == .rock && computer == .cut{
        return .win
    } else if player == .paper && computer == .rock{
        return .win
    }else if player == .cut && computer == .paper{
        return .win
    } else if player == .rock && computer == .paper{
        return .lose
    } else if player == .paper && computer == .cut{
        return .lose
    }else if player == .cut && computer == .rock{
        return .lose
    } else {
        return .tie
    }

}
