//
//  RockViewController.swift
//  Roshambo
//
//  Created by Christian Baker on 1/5/21.
//

import UIKit

class RockViewController: UIViewController {
    
    @IBOutlet weak var gameResultLabel: UILabel!
    @IBOutlet weak var gameResultImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
         let gameResult = GameFunctions.gameResult(userAttack: .rock)
        
        switch gameResult {
        case .win:
            gameResultLabel.text = "Rock breaks scissors!  You win!"
            gameResultImage.image = UIImage(named: "RockCrushesScissors")
        case .lose:
            gameResultLabel.text = "Paper covers rock! You lose!"
            gameResultImage.image = UIImage(named: "PaperCoversRock")
        default:
            gameResultLabel.text = "It's a tie!"
            gameResultImage.image = UIImage(named: "itsATie")
        }
    }
    
    @IBAction func playAgain(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)    }


}
