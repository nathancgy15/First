//
//  ContentView.swift
//  Addition Project
//
//  Created by nathan chen on 2023/4/19.
//

import SwiftUI

struct ContentView: View {
    @State private var number1: String = ""
    @State private var number2: String = ""
    @State private var result: String = ""

    var body: some View {
        VStack {
            TextField("Enter first number", text: $number1)
                .padding()
                .keyboardType(.numberPad)

            TextField("Enter second number", text: $number2)
                .padding()
                .keyboardType(.numberPad)

            Button(action: {
                let sum = (Int(number1) ?? 0) + (Int(number2) ?? 0)
                result = "Sum = \(sum)"
            }) {
                Text("Add Numbers")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }

            Text(result)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
