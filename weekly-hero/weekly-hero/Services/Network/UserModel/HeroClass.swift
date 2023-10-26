//
//  HeroClass.swift
//  WeeklyHeroDNDProject
//
//  Created by Artyom Ivanov on 24.10.2023.
//

import Foundation

struct HeroClasses: Decodable, Hashable {
    let count: Int
    let classes: [HeroClass]
}

struct HeroClass: Decodable, Hashable {
    let id: String
    let name: String
    let description: String
}
