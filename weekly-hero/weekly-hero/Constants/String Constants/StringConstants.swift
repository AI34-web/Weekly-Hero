//
//  StringConstants.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 24.10.2023.
//

import Foundation

enum StringConstants: String {
    
    // MARK: - HeroesListView
    case heroesListViewTitle
    
    var localized: String {
        NSLocalizedString("\(rawValue)", comment: "")
    }
}
