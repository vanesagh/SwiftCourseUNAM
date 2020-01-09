//
//  Sign.swift
//  ClaseViernesPPTGameApp
//
//  Created by 2020-2 on 09/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import Foundation
import GameplayKit

enum Sign {
    case rock
    case paper
    case cut
    
}

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    }
    else {
        return .cut
    }
    
}
