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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceOneImage.image = UIImage(named: "DiceSix")
    }
}

