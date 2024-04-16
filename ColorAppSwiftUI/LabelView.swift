//
//  LabelView.swift
//  ColorAppSwiftUI
//
//  Created by Александр Соболев on 14.04.2024.
//

import SwiftUI

struct LabelView: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 55, alignment: .leading)
            .foregroundStyle(Color.white)
    }
}

#Preview {
    LabelView(value: 128)
}
