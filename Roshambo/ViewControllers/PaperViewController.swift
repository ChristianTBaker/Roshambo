//
//  PaperViewController.swift
//  Roshambo
//
//  Created by Christian Baker on 1/5/21.
//

import UIKit

class PaperViewController: UIViewController {

    @IBOutlet weak var gameResultLabel: UILabel!
    @IBOutlet weak var gameResultImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
         let gameResult = GameFunctions.gameResult(userAttack: .paper)
        
        switch gameResult {
        case .win:
            gameResultLabel.text = "Paper covers rock!  You win!"
            gameResultImage.image = UIImage(named: "PaperCoversRock")
        case .lose:
            gameResultLabel.text = "Scissors cut paper! You lose!"
            gameResultImage.image = UIImage(named: "ScissorsCutPaper")
        default:
            gameResultLabel.text = "It's a tie!"
            gameResultImage.image = UIImage(named: "itsATie")
        }
    }
    
    @IBAction func playAgain(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)    }

}
