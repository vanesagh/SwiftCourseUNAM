//
//  Control State.swift
//  ClaseViernesPPTGameApp
//
//  Created by 2020-2 on 09/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import Foundation

enum controlState{
    case start
    case win
    case lose
    case tie
}

func controlFlux(player: Sign? , computer: Sign?) -> controlState{
    if player == nil || computer == nil {
        return .start
    }else if player == .rock && computer == .cut{
        return .win
    }else if player == .paper && computer == .rock{
        return .win
    }else if player == .cut && computer == .paper{
        return .win
    }else if player == .rock && computer == .paper {
        return .lose
    }else if player == .paper && computer == .cut{
        return .lose
    }else if player == .cut && computer == .rock{
        return .lose
    }else {
        return .tie
    }
}
