//
//  HeroListNavigationView.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 27.10.2023.
//

import SwiftUI

struct HeroListNavigationView: View {
    var body: some View {
        HStack {
            Text(
                StringConstants.heroesListViewTitle.localized
            )
            .font(.custom(.abosanovaHeading, size: 32))
            
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    HeroListNavigationView()
}
