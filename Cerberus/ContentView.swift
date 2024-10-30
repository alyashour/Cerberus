//
//  ContentView.swift
//  Cerberus
//
//  Created by Aly Ashour on 2024-10-29.
//

import SwiftUI

struct ContentView: View {
    @State var selectedNote: NoteViewModel = NoteViewModel()
    var noteView: NoteView? = nil
    
    let backgroundColor: Color
    
    var notes = [
        NoteViewModel(content: "Note 1", color: .red),
        NoteViewModel(content: "Note 2", color: .green),
        NoteViewModel(content: "Note 3", hexColor: "0000FF")
    ]
    
    init(defaultIndex: Int = 0, backgroundColor: Color = .black) {
        self.backgroundColor = backgroundColor
        self.noteView = NoteView(noteVM: $selectedNote)
    }
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Spacer()
                ForEach(notes, id: \.id) { note in
                    Button(action: {
                        if selectedNote != note {
                            selectedNote = note
                        }
                    }) {
                        ZStack {
                            Circle()
                                .fill(note.color)
                                .frame(width: 20, height:  20)
                            Circle()
                                .fill(selectedNote == note ? note.color : backgroundColor)
                                .frame(width: 10, height: 10)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
//                    Text(note.content)
                }
                Spacer()
            }
            .padding()
            .background(backgroundColor)
            
            NoteView(noteVM: $selectedNote)
        }
    }
}

#Preview {
    ContentView()
        .frame(width: 300, height: 300)
}
