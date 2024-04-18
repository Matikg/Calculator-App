//
//  ContentView.swift
//  Calculator
//
//  Created by Mateusz Grudzień on 18/04/2024.
//

import SwiftUI

// Custom colors
let darkerGray = Color(CGColor(gray: 0.1, alpha: 1))
let darkGray = Color(CGColor(gray: 0.3, alpha: 1))

struct CalculatorHome: View {
    @EnvironmentObject var model: CalculatorModel
    
    var body: some View {
        
        GeometryReader { geo in
            VStack(alignment: .trailing, spacing: 20) {
                
                Spacer()
                
                // Display values
                Text(model.displayValue)
                    .foregroundStyle(.white)
                    .font(.system(size: 40))
                    .lineLimit(1)
                    .padding(.horizontal, 20)
                
                // Display the rows of buttons
                VStack(spacing: 10) {
                    CalculatorRow(labels: ["CE", "", "", String("\u{00f7}")], colors: [darkGray, darkGray, darkGray, .orange])
                    
                    CalculatorRow(labels: ["7", "8", "9", String("\u{00d7}")])
                    
                    CalculatorRow(labels: ["4", "5", "6", "-"])
                    
                    CalculatorRow(labels: ["1", "2", "3", "+"])
                    
                    CalculatorRow(labels: ["0", ",", "", "="])
                }
                .frame(height: geo.size.height * 0.6)
                .padding()
            }
            .background(darkerGray)
        }
        
    }
}

#Preview {
    CalculatorHome()
        .environmentObject(CalculatorModel())
}
