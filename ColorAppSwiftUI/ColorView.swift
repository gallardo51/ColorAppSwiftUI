//
//  ColorView.swift
//  ColorAppSwiftUI
//
//  Created by Александр Соболев on 14.04.2024.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .clipShape(.rect(cornerRadius: 15))
            .frame(height: 150)
            .overlay(RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white, lineWidth: 4)
            )
    }
}

#Preview {
    ColorView(red: 100, green: 100, blue: 100)
}
