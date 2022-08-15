//
//  Button.swift
//  xylophone
//
//  Created by Joao Limao on 15/08/22.
//

import Foundation
import UIKit


class Button: UIButton {
    let PADDING_PER_BUTTON = 20.0
    
    var note: Note
    
    init(note: Note){
        self.note = note
 
        // What is this UIControl.State?
        super.init(frame: .zero)
        setTitle(note.text, for: .normal)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = note.color
    }
    
    func setParentWidthAnchor(anchor: NSLayoutDimension) {
        widthAnchor.constraint(
            equalTo: anchor,
            constant: getButtonPadding(value: note.index)
        ).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("Cannot start with XIB or Storyboard")
    }
    
    private func getButtonPadding(value: Int) -> CGFloat {
        return -Double(value)*PADDING_PER_BUTTON
    }
}
