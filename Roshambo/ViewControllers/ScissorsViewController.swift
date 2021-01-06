//
//  ScissorsViewController.swift
//  Roshambo
//
//  Created by Christian Baker on 1/5/21.
//

import UIKit

class ScissorsViewController: UIViewController {

    @IBOutlet weak var gameResultLabel: UILabel!
    @IBOutlet weak var gameResultImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
         let gameResult = GameFunctions.gameResult(userAttack: .scissors)
        
        switch gameResult {
        case .win:
            gameResultLabel.text = "Scissors cut paper!  You win!"
            gameResultImage.image = UIImage(named: "ScissorsCutPaper")
        case .lose:
            gameResultLabel.text = "Rock breaks scissors! You lose!"
            gameResultImage.image = UIImage(named: "RockCrushesScissors")
        default:
            gameResultLabel.text = "It's a tie!"
            gameResultImage.image = UIImage(named: "itsATie")
        }
    }
    
    @IBAction func playAgain(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)    }

}
