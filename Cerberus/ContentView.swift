//
//  ContentView.swift
//  Cerberus
//
//  Created by Aly Ashour on 2024-10-29.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    let backgroundColor: Color
    
    let font: Font = .custom("JetBrainsMono Nerd Font Propo", size: 16)
    
    @Query private var notes: [Note]
    @Environment(\.modelContext) private var modelContext
    
    init(backgroundColor: Color = .black) {
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
        TabView {
            // Dynamically generate tabs for each note
            ForEach(notes) { note in
                NoteView(note: note)
                    .tabItem {
                        Label("n", systemImage: "note.text")
                    }
            }
            NoteView(note: Note())
            .tabItem {
                Label("+", systemImage: "pencil")
            }
        }
    }
}

#Preview {
    ContentView()
        .frame(width: 300, height: 300)
}
