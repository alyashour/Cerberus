//
//  NotesViewModel.swift
//  Cerberus
//
//  Created by Aly Ashour on 2024-10-29.
//

import Foundation
import SwiftData
import SwiftUI

class NotesViewModel: ObservableObject {
    @Environment(\.modelContext) var modelContext
    @Query var allNotes: [Note]
    @Published var notes: [Note] = []
    
    func createNote() {
        print("Creating Note...")
    }
}
