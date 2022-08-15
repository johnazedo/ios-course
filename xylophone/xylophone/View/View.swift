//
//  View.swift
//  xylophone
//
//  Created by Joao Limao on 15/08/22.
//

import Foundation
import UIKit

class View: UIView {
    
    
    init(){
        super.init(frame: .zero)
        addView()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Cannot start with XIB or Storyboard")
    }
    
    private func addView(){
        let stack = UIStackView()
        stack.axis = NSLayoutConstraint.Axis.vertical
        stack.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stack.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        stack.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        stack.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
                
        let button_one = Button(label: "C", color: .red, padding: 0.0)
        let button_two = Button(label: "D", color: .blue, padding: 5.0)
        
        stack.addSubview(button_one)
        stack.addSubview(button_two)
        addSubview(stack)
    }
    
    private func setupView(){
        backgroundColor = .white
    }
}

class Button: UIButton {
    var color: UIColor
    var label: String
    var padding: CGFloat

    
    init(label: String, color: UIColor, padding: CGFloat){
        self.color = color
        self.label = label
        self.padding = padding
 
        // What is this UIControl.State?
        super.init(frame: .zero)
        guard let anchor = superview?.widthAnchor else { return }
        setTitle(label, for: .normal)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = color
        widthAnchor.constraint(equalTo: anchor, constant: -padding).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("Cannot start with XIB or Storyboard")
    }
}
