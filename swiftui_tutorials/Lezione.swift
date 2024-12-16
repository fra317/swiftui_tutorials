//
//  Lezione.swift
//  swiftui_tutorials
//
//  Created by Francesco Prisco on 05/12/24.
//

import Foundation

class Lezione: Identifiable{
    let id: UUID = UUID()
    let name: String
    let description: String
    let emoji: String
    
    init(name: String, description: String, emoji: String) {
        self.name = name
        self.description = description
        self.emoji = emoji
    }
}
