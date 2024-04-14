//
//  TextFieldView.swift
//  ColorAppSwiftUI
//
//  Created by Александр Соболев on 14.04.2024.
//

import SwiftUI

struct TextFieldView: View {
    @State private var valueText = ""
    
    var body: some View {
        TextField(" 0.00", text: $valueText)
            .overlay(RoundedRectangle(cornerRadius: 4).stroke(lineWidth: 2).foregroundStyle(Color.blue))
            .frame(width: 50)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .keyboardType(.numberPad).buttonStyle(.automatic)
            
            
            
            
    }
}

#Preview {
    TextFieldView()
}
