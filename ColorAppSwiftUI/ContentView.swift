//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Александр Соболев on 14.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 5) {
            ColorView()
            VStack {
                HStack {
                    LabelView()
                    SliderView(color: .red)
                    TextFieldView()
                }
                HStack {
                    LabelView()
                    SliderView(color: .green)
                    TextFieldView()
                }
                HStack {
                    LabelView()
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
