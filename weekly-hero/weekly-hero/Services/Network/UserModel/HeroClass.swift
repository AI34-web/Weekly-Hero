//
//  HeroClass.swift
//  WeeklyHeroDNDProject
//
//  Created by Artyom Ivanov on 24.10.2023.
//

import Foundation

struct HeroClasses: Codable {
    let count: Int
    let classes: [HeroClass]
}

struct HeroClass: Codable {
    let id: String
    let name: String
    let description: String
}
