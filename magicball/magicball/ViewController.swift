//
//  ViewController.swift
//  magicball
//
//  Created by Joao Limao on 11/08/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func button(_ sender: Any) {
        let images = ["yes", "no", "no_idea", "tai_yes", "aal"]
        let number = Int.random(in: 0...4)
        
        image.image = UIImage(named: images[number])
    
    }
}

