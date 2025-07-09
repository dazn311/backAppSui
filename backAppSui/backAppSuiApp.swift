//
//  backAppSuiApp.swift
//  backAppSui
//
//  Created by Daz N311 on 01.07.2025.
//

import SwiftUI

@main
struct backAppSuiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(UserSettings(user: .init(
              name: "User",
              password: "",
              lastName: "",
              phone: "",
              adress: "",
              accessesAdress: [],
              imagesObject: [],
              avatar: .user,
              status: .other)
            ))
        }
    }
}
