//
//  GrandChildView.swift
//  DataFlow
//
//  Created by Mariia Skydan on 5/10/2021.
//

import SwiftUI

struct GrandChildView: View {
    // This grandchild view now gets access to the environment object
    // even though its parent does not.

    @EnvironmentObject var userSettings: UserSettings

    var body: some View {
        let imageName = userSettings.isLoggedIn
            ? "person.crop.square"
            : "questionmark.square"

        let buttonText = userSettings.isLoggedIn
            ? "Log Out"
            : "Log In"

        // because there is more than one statement in the body method
        // the return keyword is needed to return the View
        
        return ZStack {
            Color.blue

            VStack {
                Image(systemName: imageName).padding()

                // Toggling the environment object value changes
                // all the views that use it
                Button(action: { userSettings.isLoggedIn.toggle() }) {
                    Text(buttonText).modifier(GrayButtonStyle())
                }
            }
            .padding()
        }
        .foregroundColor(.white)
        .font(.system(size: 100))
    }
}

struct GrandChildView_Previews: PreviewProvider {
    static var previews: some View {
        GrandChildView()
            .environmentObject(UserSettings())
    }
}
