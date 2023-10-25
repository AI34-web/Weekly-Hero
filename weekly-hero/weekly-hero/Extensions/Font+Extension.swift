//
//  Font+extension.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 25.10.2023.
//

import SwiftUI

extension Font {
    static func custom(_ font: CustomFonts, size: CGFloat) -> Font {
        SwiftUI.Font.custom(font.rawValue, size: size)
    }
}

public enum CustomFonts: String, CaseIterable {
    case abosanovaHeading = "abosanova"
}
