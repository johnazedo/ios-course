//
//  RandomNumber.swift
//  dicee
//
//  Created by Joao Limao on 08/08/22.
//

import Foundation


struct RandomNumber {
    static func generateNumber() -> Int {
        return Int.random(in: 1...6)
    }
}
