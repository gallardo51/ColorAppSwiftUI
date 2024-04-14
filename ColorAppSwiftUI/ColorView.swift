//
//  ColorView.swift
//  ColorAppSwiftUI
//
//  Created by Александр Соболев on 14.04.2024.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 320, height: 200)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.orange, lineWidth: 4))
            .foregroundStyle(Color.blue)
    }
}

#Preview {
    ColorView()
}
