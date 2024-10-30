//
//  Note.swift
//  Cerberus
//
//  Created by Aly Ashour on 2024-10-29.
//

import Foundation
import SwiftData
import SwiftUI

@Model
class Note: Identifiable  {
    @Attribute(.unique) var id: UUID
    var content: String
    var hexColor: String
    
    init(id: UUID = UUID(), content: String = "", hexColor: String = "FFFFFF") {
        self.id = id
        self.content = content
        self.hexColor = hexColor
    }
}
