//
//  GameFunctions.swift
//  Roshambo
//
//  Created by Christian Baker on 1/5/21.
//

import Foundation

class GameFunctions {
    static func gameResult(userAttack: RoshamboOptions) -> GameResults {
        let rand = Int.random(in: 0...2)
        let computerAttack = RoshamboOptions(rawValue: rand)!
        
        switch (userAttack, computerAttack)
        {
        case (.rock, .paper), (.paper, .scissors), (.scissors, .rock):
            return GameResults.lose
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
            return GameResults.win
        default:
            return GameResults.tie
        }
    }
}
