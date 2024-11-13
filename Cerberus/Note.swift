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
class Note: Identifiable, ObservableObject  {
    @Attribute(.unique) var id: UUID
    var content: String
    var hexColor: String
    
    var color: Color {
        get { return Color(hex: hexColor) }
        set { hexColor = newValue.toHex()! }
    }
    
    init(id: UUID = UUID(), content: String = "", hexColor: String = "FFFFFF") {
        self.id = id
        self.content = content
        self.hexColor = hexColor
    }
    
    convenience init(content: String = "", color: Color) {
        self.init(content: content, hexColor: color.toHex()!)
    }
}
