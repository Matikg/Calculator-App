//
//  Operator.swift
//  Calculator
//
//  Created by Mateusz Grudzień on 18/04/2024.
//

import Foundation

class Operator {
    var op: (Double, Double) -> Double
    var isDivision = false
    
    init(_ string: String) {
        
        if string == "+" {
            self.op = (+)
            
        } else if string == "-" {
            self.op = (-)
            
        } else if string == String("\u{00d7}") {
            self.op = (*)
            
        } else {
            self.op = (/)
            self.isDivision = true
        }
    }
}
