//
//  SliderView.swift
//  ColorAppSwiftUI
//
//  Created by Александр Соболев on 14.04.2024.
//

import SwiftUI

struct SliderView: View {
    @State private var value = Double.random(in: 0...255)
    let color: Color
    
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
            .frame(width: 190)
            .padding()
    }
}

#Preview {
    SliderView(color: .red)
}
