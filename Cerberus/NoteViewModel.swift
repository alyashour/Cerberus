//
//  NoteViewModel.swift
//  Cerberus
//
//  Created by Aly Ashour on 2024-10-29.
//

import Foundation
import SwiftUI

class NoteViewModel: Identifiable, Equatable {
    @State var note: Note
    
    var id: UUID { note.id }
    
    var content: String {
        set { note.content = newValue }
        get { note.content }
    }
    
    var color: Color {
        Color(hex: note.hexColor)
    }
    
    init(note: Note) {
        self.note = note
    }
    
    init(content: String = "", hexColor: String = "23CD2B") {
        self.note = Note(content: content, hexColor: hexColor)
    }
    
    convenience init(content: String = "", color: Color) {
        let hexColor = color.toHex()!
        print(hexColor)
        self.init(content: content, hexColor: hexColor)
    }
    
    static func == (lhs: NoteViewModel, rhs: NoteViewModel) -> Bool {
        return lhs.id == rhs.id
    }
}
