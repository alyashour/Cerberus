//
//  NoteView.swift
//  Cerberus
//
//  Created by Aly Ashour on 2024-10-29.
//

import SwiftUI

struct NoteView: View {
    @Binding var noteVM: NoteViewModel
    var body: some View {
        TextEditor(text: $noteVM.content)
            .font(.custom("JetBrainsMono Nerd Font Propo", size: 16))
            .scrollDisabled(true)
            .contentMargins(10)
    }
}

#Preview {
    @Previewable @State var nvm = NoteViewModel()
    NoteView(noteVM: $nvm)
}
