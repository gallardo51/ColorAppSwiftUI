//
//  SliderView.swift
//  ColorAppSwiftUI
//
//  Created by Александр Соболев on 14.04.2024.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            LabelView(value: value)
            
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) { isOnFocus in
                    textValue = "\(lround(isOnFocus))"
                }
            
            TextFieldView(valueText: $textValue, value: $value)
        }
        .onAppear {
            textValue = "\(lround(value))"
        }
    }
}

#Preview {
    SliderView(value: .constant(100), color: .red)
}
