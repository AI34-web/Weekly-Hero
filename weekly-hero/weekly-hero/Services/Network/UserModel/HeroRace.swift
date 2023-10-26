//
//  HeroRace.swift
//  WeeklyHeroDNDProject
//
//  Created by Артем Иванов on 25.09.2023.
//

import Foundation

struct HeroRaces: Decodable, Hashable {
    let count: Int
    let race: [HeroRace]
}

struct HeroRace: Decodable, Hashable {
    let id: String
    let name: String
    let characteristics: [HeroCharacteristics]
    let skills: [HeroSkills]
    let subRaces: [HeroSubRace]
}

struct HeroCharacteristics: Decodable, Hashable {
    let id: String
    let name: String
    let value: Int
}

struct HeroSkills: Decodable, Hashable {
    let id: String
    let name: String
    let description: String
}

struct HeroSubRace: Decodable, Hashable {
    let id: String
    let name: String
    let description: String
    let characteristics: [HeroSubRaceCharacteristics]
    let skills: [HeroSubRaceSkills]
}
   
struct HeroSubRaceCharacteristics: Decodable, Hashable {
    let id: String
    let name: String
    let value: Int
}

struct HeroSubRaceSkills: Decodable, Hashable {
    let id: String
    let name: String
    let description: String
}
