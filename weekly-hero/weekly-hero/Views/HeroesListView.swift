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
                    .font(.custom(.abosanovaHeading, size: 32))
                
                Spacer()
            }
            
            HStack {
                Text(StringConstants.heroesListViewTitle.localized)
                    .font(.custom("abosanova", size: 32))
                
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
