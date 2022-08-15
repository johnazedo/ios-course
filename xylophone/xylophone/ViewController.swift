//
//  ViewController.swift
//  xylophone
//
//  Created by Joao Limao on 15/08/22.
//

import UIKit

class ViewController: UIViewController {
        
    private var mainView: View?
    
    
    override func loadView() {
        let mainView = View()
        view = mainView
        self.mainView = mainView
    }
}

