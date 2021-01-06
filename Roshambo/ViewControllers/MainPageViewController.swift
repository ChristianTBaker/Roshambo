//
//  ViewController.swift
//  Roshambo
//
//  Created by Christian Baker on 1/5/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func userChooseRock() {
        let controller: RockViewController
        controller = storyboard?.instantiateViewController(identifier: "RockViewController") as! RockViewController
        present(controller, animated: true, completion: nil)
    }

    @IBAction func userSelectsPaper(_ sender: Any) {
        performSegue(withIdentifier: "userSelectsPaper", sender: self)
    }
}

