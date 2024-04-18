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
            displayValue = "0"
            reset()
            
        } else if label == "=" {
            equalsClicked()
            
        } else if label == "," {
            decimalClicked()
            
        } else if let value = Double(label) {
            numberPressed(value: value)
            
        } else {
            operatorPressed(operator: Operator())
            
        }
    }
    
    func setDisplayValue(number: Double) {
        if number == floor(number) {
            displayValue = "\(Int(number))"
        } else {
            let decimalPlaces = 10
            displayValue = "\(round(number * pow(10, decimalPlaces)) / pow(10, decimalPlaces))"
        }
    }
    
    func reset() {
        currentOp = nil
        currentNumber = 0
        previousNumber = nil
        equaled = false
        decimalPlace = 0
    }
    
    func equalsClicked() {
        
    }
    
    func decimalClicked() {
        
    }
    
    func numberPressed(value: Double) {
        if equaled {
            currentNumber = nil
            previousNumber = nil
            equaled = false
        }
        
        if currentNumber == nil {
            currentNumber = value / pow(10, decimalPlace)
            
        } else {
            if decimalPlace == 0 {
                currentNumber = currentNumber! * 10 + value
                
                
            } else {
                currentNumber = currentNumber! + value / pow(10,decimalPlace)
                decimalPlace += 1
            }
        }
        setDisplayValue(number: currentNumber!)
        
    }
    
    func operatorPressed(operator: Operator) {
        
    }
}

func pow(_ base: Int, _ exp: Int) -> Double {
    return pow(Double(base), Double(exp))
    
}
