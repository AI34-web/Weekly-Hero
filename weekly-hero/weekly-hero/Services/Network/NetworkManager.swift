//
//  NetworkManager.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 24.10.2023.
//

import Foundation

final class NetworkManager: ObservableObject {
    
    init() {}
    
    @Published var heroRaces = [HeroRace]()
    @Published var heroClasses = [HeroClass]()
    
    static let shared = NetworkManager()
}

extension NetworkManager {
    func loadRacesData() {
        if let url = Bundle.main.url(forResource: "dndRaces", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                if let decodeDate = try? JSONDecoder().decode(HeroRaces.self, from: data) {
                    self.heroRaces = decodeDate.race
                }
            } catch {
                print("Error loading data: \(error)")
            }
        }
    }
    
    func loadClassesData() {
        if let url = Bundle.main.url(forResource: "dndClasses", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                if let decodeDate = try? JSONDecoder().decode(HeroClasses.self, from: data) {
                    self.heroClasses = decodeDate.classes
                }
            } catch {
                print("Error loading data: \(error)")
            }
        }
    }
}
