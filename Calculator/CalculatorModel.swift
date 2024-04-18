//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Mateusz Grudzień on 18/04/2024.
//

import Foundation

class CalculatorModel: ObservableObject {
    
    // Used to update the UI
    @Published var displayValue = "0"
    
    var currentOp: Operator?
    var currentNumber: Double? = 0
    var previousNumber: Double?
    var equaled = false
    var decimalPlace = 0
    
    func buttonPressed(label: String) {
        
        if label == "CE" {
            
        } else if label == "=" {
            equalsClicked()
            
        } else if label == "." {
            decimalClicked()
            
        } else if let value = Double(label) {
            numberPressed(value: value)
            
        } else {
            operatorPressed(operator: Operator())
            
        }
    }
    
    func reset() {
        
    }
    
    func equalsClicked() {
        
    }
    
    func decimalClicked() {
        
    }
    
    func numberPressed(value: Double) {
        
    }
    
    func operatorPressed(operator: Operator) {
        
    }
}
