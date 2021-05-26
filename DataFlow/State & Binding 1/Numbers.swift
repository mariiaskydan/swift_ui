//
//  Numbers.swift
//  DataFlow
//
//  Created by Mariia Skydan on 5/10/2021.
//

import SwiftUI

struct Numbers: View {
    @State private var stepperValue = 0

    var body: some View {
        VStack {
            Text("Parent view = \(stepperValue)")
                .font(.title)

            NumberChooser(stepperValue: $stepperValue)
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers()
    }
}

struct NumberChooser: View {
    // Using state from parent with 2-way binding
    @Binding var stepperValue: Int

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.init(red: 0.95, green: 0.95, blue: 0.95))
                .frame(height: 300)

            VStack {
                // Using bound state from parent with 2-way binding
                Stepper(value: $stepperValue, in: 0...20) {
                    Text("Value in child = \(stepperValue)")
                }
                .padding(50)

                // Using bound state from parent as property
                // this view cannot change the value
                NumberBlock(stepperValue: stepperValue)
            }
        }
        .padding()
    }
}

struct NumberBlock: View {
    // As this view never changes the value, there is no need to bind it
    var stepperValue: Int

    var body: some View {
        Image(systemName: "\(stepperValue).square")
            .font(.system(size: 100))
            .foregroundColor(.blue)
            .padding(.bottom, 20)
    }
}

