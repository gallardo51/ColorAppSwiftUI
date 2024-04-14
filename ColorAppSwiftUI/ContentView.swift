//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Александр Соболев on 14.04.2024.
//

import SwiftUI

enum ColorSliders {
    case red, green, blue
}

struct ContentView: View {
//    @State private var viewColor: Color
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    @State private var currentSlider = ColorSliders.red
    
//    private func setColor() {
//        switch currentSlider {
//        case .red:
//            <#code#>
//        case .green:
//            <#code#>
//        case .blue:
//            <#code#>
//        } {
//        default:
//            <#code#>
//        }
//    }
    
    var body: some View {
        VStack(spacing: 5) {
            ColorView()
            VStack {
                HStack {
                    Text("\(lround(redSliderValue))").foregroundStyle(Color.red)
                    SliderView(color: .red)
                    TextFieldView()
                }
                HStack {
                    Text("\(lround(greenSliderValue))").foregroundStyle(Color.green)
                    SliderView(color: .green)
                    TextFieldView()
                }
                HStack {
                    Text("\(lround(blueSliderValue))").foregroundStyle(Color.blue)
                    SliderView(color: .blue)
                    TextFieldView()
                }
            }
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
