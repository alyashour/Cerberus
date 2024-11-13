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
    @AppStorage("d") private var show = true
    var body: some Scene {
        MenuBarExtra("App", systemImage: "paperplane") {
            ContentView()
                .frame(minWidth: 500, minHeight: 500)
                .modelContainer(for: [
                    Note.self
                ])
        }
        .menuBarExtraStyle(.window)
    }
}

#Preview {
    ContentView()
        .presentedWindowStyle(HiddenTitleBarWindowStyle())
}

