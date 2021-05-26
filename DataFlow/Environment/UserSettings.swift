//
//  UserSettings.swift
//  DataFlow
//
//  Created by Mariia Skydan on 5/10/2021.
//

import Foundation

// An EnvironmentObject class is just like any ObservableObject class

class UserSettings: ObservableObject {
    @Published var isLoggedIn: Bool = false
}
