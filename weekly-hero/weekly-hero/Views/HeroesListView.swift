//
//  HeroesListView.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 24.10.2023.
//

import SwiftUI

struct HeroesListView: View {
    var body: some View {
        VStack {
            HStack {
                Text(StringConstants.heroesListViewTitle.localized)
                    .styleHeading()
                
                Spacer()
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    HeroesListView()
}
