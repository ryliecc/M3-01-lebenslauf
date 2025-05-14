//
//  Experience.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import Foundation

struct Experience {
    let id = UUID()
    let title: String
    let place: String?
    let skillsGained: String
    
    init(title: String, place: String? = nil, skillsGained: String) {
        self.title = title
        self.place = place
        self.skillsGained = skillsGained
    }
}
