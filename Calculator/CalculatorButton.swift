//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Mateusz Grudzień on 18/04/2024.
//

import SwiftUI

struct CalculatorButton: View {
    @EnvironmentObject var model: CalculatorModel
    var label: String
    var color: Color
    var body: some View {
        Button(action: {
            // Action
            model.buttonPressed(label: label)
        }, label: {
            ZStack {
                Circle()
                    .fill(color)
                
                Text(label)
                    .font(.title)
            }
        })
        .accentColor(.white)
    }
}

#Preview(traits: .fixedLayout(width: 100, height: 100)) {
    CalculatorButton(label: "1", color: .gray)
        .environmentObject(CalculatorModel())
}
