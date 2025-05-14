//
//  Education.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import Foundation

struct Education {
    let id = UUID()
    let startYear: Int
    let endYear: Int?
    let title: String
    let school: String
    let description: String
}
