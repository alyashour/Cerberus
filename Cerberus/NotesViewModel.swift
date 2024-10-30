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
//    private var notesService = CloudService()
    @Published var notes: [Note] = []
    
    func createNote() {
        print("Creating Note...")
    }
    
//    func fetchNotes() {
//        notesService.fetchNotes { [weak self] result in
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let notes):
//                    self?.notes = notes
//                case .failure(let error):
//                    print("Error fetching notes: \(error)")
//                }
//            }
//        }
//    }
    
//    func addNote(content: String) {
//        let newNote = Note(id: UUID(), content: content)
//        notesService.saveNote(newNote) { [weak self] result in
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let savedNote):
//                    self?.notes.append(savedNote)
//                case .failure(let error):
//                    print("Error saving note: \(error)")
//                }
//            }
//        }
//    }
}
