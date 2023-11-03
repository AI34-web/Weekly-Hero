//
//  Hero.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 02.11.2023.
//

import Foundation

struct Hero: Identifiable {
    let id: UUID = UUID()
    let dateCreated: Date
    let race: String
    let reaceID: String
}
