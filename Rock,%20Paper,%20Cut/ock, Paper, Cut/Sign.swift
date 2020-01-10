//
//  Sign.swift
//  Rock, Paper, Cut
//
//  Created by Edgar Vilchis on 09/01/20.
//  Copyright © 2020 Edgar Vilchis. All rights reserved.
//

import Foundation
import GameplayKit

enum Sign{
    case rock
    case paper
    case cut
}

let randomChoise = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign{
    let sign = randomChoise.nextInt()
    if sign == 0{
        return .rock
    } else if sign == 1{
        return .paper
    } else {
        return .cut
    }
}
