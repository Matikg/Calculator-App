//
//  CalculatorRow.swift
//  Calculator
//
//  Created by Mateusz Grudzień on 18/04/2024.
//

import SwiftUI

let columnCount = 4

struct CalculatorRow: View {
    var labels = ["", "", "", ""]
    var colors: [Color] = [.gray, .gray, .gray, .orange]
    
    var body: some View {
        // Display a button for each column
        HStack(spacing: 10) {
            ForEach(0..<columnCount) { index in
                CalculatorButton(label: labels[index], color: colors[index])
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 300, height: 100)) {
    CalculatorRow(labels: ["1", "2", "3", "+"])
}
