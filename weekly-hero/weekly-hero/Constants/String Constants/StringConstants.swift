//
//  StringConstants.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 24.10.2023.
//

import Foundation

enum StringConstants: String {
    
    // MARK: - ContentView
    case titel
    
    var localized: String {
        NSLocalizedString("\(rawValue)", comment: "")
    }
}
