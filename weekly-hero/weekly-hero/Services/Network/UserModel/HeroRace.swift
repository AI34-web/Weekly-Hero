//
//  HeroRace.swift
//  WeeklyHeroDNDProject
//
//  Created by Артем Иванов on 25.09.2023.
//

import Foundation

struct HeroRaces: Codable {
    let count: Int
    let race: [HeroRace]
}

struct HeroRace: Codable {
    let id: String
    let name: String
    let characteristics: [HeroCharacteristics]
    let skills: [HeroSkills]
    let subRaces: [HeroSubRace]
}

struct HeroCharacteristics: Codable {
    let id: String
    let name: String
    let value: Int
}

struct HeroSkills: Codable {
    let id: String
    let name: String
    let description: String
}

struct HeroSubRace: Codable {
    let id: String
    let name: String
    let description: String
    let characteristics: [HeroSubRaceCharacteristics]
    let skills: [HeroSubRaceSkills]
}
   
struct HeroSubRaceCharacteristics: Codable {
    let id: String
    let name: String
    let value: Int
}

struct HeroSubRaceSkills :Codable {
    let id: String
    let name: String
    let description: String
}
