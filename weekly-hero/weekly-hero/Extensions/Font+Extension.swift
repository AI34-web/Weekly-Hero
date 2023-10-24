//
//  Font+extension.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 25.10.2023.
//

import SwiftUI

extension Font {
    static func custom(_ font: CustomFonts, size: CGFloat) -> SwiftUI.Font {
        SwiftUI.Font.custom(font.rawValue, size: size)
    }
}
enum CustomFonts: String {
    
    /// Заголовочный шрифт
    case headingSuperSquad = "Super_Squad_Rus"
}
