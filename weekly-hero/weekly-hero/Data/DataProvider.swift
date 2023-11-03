//
//  DataProvider.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 02.11.2023.
//

import Foundation
import SwiftData

//TODO: - протокол - паттерн - нужно понять для чего мы это делаем
protocol DataProvidable: AnyObject {
    func getHeres() throws -> [Hero]
    func setHeroes(hero: Hero) throws
}

class DataProvider: DataProvidable {

    private var context: ModelContext

    init(context: ModelContext) {
        self.context = context
    }

    // TODO: - это точно нужго делать так?? вроде бы должен быть @Query
    func getHeres() throws -> [Hero] {
        let heroes = try context.fetch(FetchDescriptor<HeroModel>())
        return heroes.map {
            Hero(
                dateCreated: $0.dateCreated,
                race: $0.race,
                reaceID: $0.reaceID
            )
        }
    }
    
    // TODO: - для чего это нужно
    func setHeroes(hero: Hero) throws {
        context.insert(
            HeroModel(
                dateCreated: hero.dateCreated,
                race: hero.race,
                reaceID: hero.reaceID
            )
        )
    }
}

//TODO: - что то типа тестовых данных??
class MockDataProvider: DataProvidable {
    func getHeres() throws -> [Hero] {
        return [
            Hero(
                dateCreated: Date(),
                race: "Драконорожденный",
                reaceID: "Dragonborn"
            )
        ]
    }
    
    func setHeroes(hero: Hero) throws { }
}
