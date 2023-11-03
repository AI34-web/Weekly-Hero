//
//  ViewModel.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 02.11.2023.
//

import Foundation
import SwiftData

@Observable
final class ViewModel {
    var heroes: [Hero] = []
    private let dataProvider: DataProvidable
    
    init(dataProvider: DataProvidable) {
        self.dataProvider = dataProvider
        do {
            heroes = try dataProvider.getHeres()
        } catch {
            // Error handling
        }
    }
    
    // функция добавления героя
    func addHero() {
        let hero = Hero(
            dateCreated: Date(),
            race: "Тестовый герой",
            reaceID: "тестовый герой"
        )
        do {
            try dataProvider.setHeroes(hero: hero)
        } catch { }
    }
}
