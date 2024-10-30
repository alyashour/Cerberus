////
////  CloudService.swift
////  Cerberus
////
////  Created by Aly Ashour on 2024-10-29.
////
//
//import Foundation
//
//class CloudService {
//    private let baseURL = "http://10.0.0.155:3000/notes"
//    
//    func fetchNotes(completion: @escaping (Result<[Note], Error>) -> Void) {
//        guard let url = URL(string: baseURL) else {
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                completion(.failure(error))
//                return
//            }
//            
//            guard let data = data else {
//                completion(.failure(NSError(domain: "", code: -1, userInfo: nil)))
//                return
//            }
//            
//            do {
//                
//                let notes = try JSONDecoder().decode([NoteDTO].self, from: data)
//                let noteModels = notes.map {
//                    Note(from: $0)
//                }
//                completion(.success(noteModels))
//            } catch {
//                completion(.failure(error))
//            }
//        }
//        
//        task.resume()
//    }
//    
//    func saveNote(_ note: Note, completion: @escaping (Result<Note, Error>) -> Void) {
//        guard let url = URL(string: baseURL) else {
//            return
//        }
//        
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        
//        do {
//            let jsonData = try JSONEncoder().encode(note.toStruct())
//            request.httpBody = jsonData
//            
//            let task = URLSession.shared.dataTask(with: request) { data, response, error in
//                if let error = error {
//                    completion(.failure(error))
//                    return
//                }
//                
//                guard let data = data else {
//                    completion(.failure(NSError(domain: "", code: -1, userInfo: nil)))
//                    return
//                }
//                
//                do {
//                    let savedNote = try JSONDecoder().decode(NoteDTO.self, from: data)
//                    let savedNoteModel = Note(from: savedNote)
//                    completion(.success(savedNoteModel))
//                } catch {
//                    completion(.failure(error))
//                }
//            }
//            
//            task.resume()
//        } catch {
//            completion(.failure(error))
//        }
//    }
//}
