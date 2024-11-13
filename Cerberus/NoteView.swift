//
//  NoteView.swift
//  Cerberus
//
//  Created by Aly Ashour on 2024-10-29.
//

import SwiftUI

struct NoteView: View {
    @Binding var note: Note
    var body: some View {
        TextEditor(text: $note.content)
            .font(.custom("JetBrainsMono Nerd Font Propo", size: 16))
            .scrollDisabled(true)
            .padding(5)
    }
}

#Preview {
    @Previewable @State var note = Note()
    NoteView(note: $note)
}
