//
//  TextFieldView.swift
//  ColorAppSwiftUI
//
//  Created by Александр Соболев on 14.04.2024.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var valueText: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $valueText) { _ in
            withAnimation {
                checkValue()
            }
        }
        .frame(width: 55, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
            Text("Please, enter value from 0 to 255")
        }
    }
}

extension TextFieldView {
    private func checkValue() {
        if let value = Int(valueText), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        valueText = "0"
    }
}

#Preview {
    TextFieldView(valueText: .constant("128"), value: .constant(128.0))
}
