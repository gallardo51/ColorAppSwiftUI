//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Александр Соболев on 14.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    @FocusState private var focusedField: Field?
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(#colorLiteral(red: 0, green: 0.3765624762, blue: 0.7304599881, alpha: 1)).ignoresSafeArea()
                
                VStack(spacing: 40) {
                    ColorView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                    
                    VStack {
                        SliderView(value: $redSliderValue, color: .red)
                            .focused($focusedField, equals: .red)
                        SliderView(value: $greenSliderValue, color: .green)
                            .focused($focusedField, equals: .green)
                        SliderView(value: $blueSliderValue, color: .blue)
                            .focused($focusedField, equals: .blue)
                    }
                    .frame(height: 150)
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard) {
                            Button(action: previousField) {
                                Image(systemName: "chevron.up")
                            }
                            Button(action: nextField) {
                                Image(systemName: "chevron.down")
                            }
                            Spacer()
                            Button("Done") {
                                focusedField = nil
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
            }
            .onTapGesture {
                focusedField = nil
            }
        }
    }
    
    private func nextField() {
        switch focusedField {
        case .red: focusedField = .green
        case .green: focusedField = .blue
        case .blue: focusedField = .red
        case .none: focusedField = nil
        }
    }
    
    private func previousField() {
        switch focusedField {
        case .red: focusedField = .blue
        case .green: focusedField = .red
        case .blue: focusedField = .green
        case .none: focusedField = nil
        }
    }
}

extension ContentView {
    enum Field {
        case red
        case green
        case blue
    }
}

#Preview {
    ContentView()
}
