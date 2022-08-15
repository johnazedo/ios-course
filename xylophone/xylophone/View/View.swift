//
//  View.swift
//  xylophone
//
//  Created by Joao Limao on 15/08/22.
//

import Foundation
import UIKit

class View: UIView {
    let PADDING_PER_BUTTON = 20.0
    
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
        addSubview(stack)
        var button: Button
        let labels = ["Dó", "Re", "Mi", "Fá", "Sol", "Lá", "Si"]
        
        for (index, val) in labels.enumerated() {
            button = Button(label: val, color: UIColor.red)
            stack.addArrangedSubview(button)
            button.setParentWidthAnchor(
                anchor: stack.widthAnchor,
                padding: getButtonPadding(value: index)
            )
        }
        
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stack.widthAnchor.constraint(equalTo: self.safeAreaLayoutGuide.widthAnchor).isActive = true
        stack.heightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.heightAnchor).isActive = true
    }
    
    private func getButtonPadding(value: Int) -> CGFloat {
        return -Double(value)*PADDING_PER_BUTTON
    }
    
    private func setupView(){
        backgroundColor = .black
    }
}

//class Button: UIButton {
//    var color: UIColor
//    var label: String
//
//    
//    init(label: String, color: UIColor){
//        self.color = color
//        self.label = label
// 
//        // What is this UIControl.State?
//        super.init(frame: .zero)
//        setTitle(label, for: .normal)
//        setTitleColor(.white, for: .normal)
//        translatesAutoresizingMaskIntoConstraints = false
//        backgroundColor = color
//    }
//    
//    func setParentWidthAnchor(anchor: NSLayoutDimension, padding: CGFloat) {
//        widthAnchor.constraint(equalTo: anchor, constant: padding).isActive = true
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("Cannot start with XIB or Storyboard")
//    }
//}
