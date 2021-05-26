//
//  UsingState.swift
//  DataFlow
//
//  Created by Mariia Skydan on 5/10/2021.
//

import SwiftUI

struct UsingState: View {
    @State private var toggleValue = true

    var body: some View {
        // Using state with 2-way binding
        Toggle(isOn: $toggleValue) {
            Text("Toggle is \(toggleValue ? "ON" : "OFF")")
        }
        .padding(50)
    }
}

struct UsingState_Previews: PreviewProvider {
    static var previews: some View {
        UsingState()
    }
}
