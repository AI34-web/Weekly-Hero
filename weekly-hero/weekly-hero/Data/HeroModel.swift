//
//  HeroModel.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 02.11.2023.
//

import Foundation
import SwiftData

@Model
final class HeroModel {
    var dateCreated: Date
    var race: String
    var reaceID: String

    init(dateCreated: Date, race: String, reaceID: String) {
        self.dateCreated = dateCreated
        self.race = race
        self.reaceID = reaceID
    }
}
