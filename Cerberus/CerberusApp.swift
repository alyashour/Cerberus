//
//  CerberusApp.swift
//  Cerberus
//
//  Created by Aly Ashour on 2024-10-29.
//

import SwiftUI
import SwiftData

@main
struct CerberusApp: App {
    var body: some Scene {
        MenuBarExtra("App", systemImage: "hammer") {
            ContentView()
                .frame(minWidth: 500, minHeight: 500)
        }
        .menuBarExtraStyle(.window)
    }
}

#Preview {
    ContentView()
        .presentedWindowStyle(HiddenTitleBarWindowStyle())
}

