//
//  Constant.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 27.10.2023.
//

import Foundation
import SwiftUI

struct CarouselExtension : Identifiable {
    var id : Int
    var image : String
    var offset : CGFloat
    var title : String
}

func calculateWidth()->CGFloat{
    let screen = UIScreen.main.bounds.width - 50
    let width = screen - (2 * 30)
    return width
}
