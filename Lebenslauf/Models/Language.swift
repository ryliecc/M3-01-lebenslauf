//
//  Language.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import Foundation

struct Language {
    let id = UUID()
    let language: String
    let level: String
    let additionalInfo: String?
    
    init(language: String, level: String, additionalInfo: String? = nil) {
        self.language = language
        self.level = level
        self.additionalInfo = additionalInfo
    }
}
