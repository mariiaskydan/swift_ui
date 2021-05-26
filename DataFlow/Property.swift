//
//  Property.swift
//  DataFlow
//
//  Created by Mariia Skydan on 5/10/2021.
//

import SwiftUI

struct Property: View {
    // Property
    let welcome = "Hi there"

    var body: some View {
        // Using property directly
        Text(welcome)
            .font(.title)
    }
}

struct Property_Previews: PreviewProvider {
    static var previews: some View {
        Property()
    }
}
