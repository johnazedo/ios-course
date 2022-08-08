//
//  ViewController.swift
//  dicee
//
//  Created by Joao Limao on 08/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceOneImage: UIImageView!
    
    @IBOutlet weak var diceTwoImage: UIImageView!
    
    let images = [
        1: "DiceOne",
        2: "DiceTwo",
        3: "DiceThree",
        4: "DiceFour",
        5: "DiceFive",
        6: "DiceSix"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollButton(_ sender: Any) {
        let numberOne = RandomNumber.generateNumber()
        let numberTwo = RandomNumber.generateNumber()
        
        diceOneImage.image = UIImage(named: images[numberOne] ?? "DiceOne")
        diceTwoImage.image = UIImage(named: images[numberTwo] ?? "DiceOne")
    }
    
    
}

