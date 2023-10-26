//
//  HeroesListView.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 24.10.2023.
//

import SwiftUI

struct HeroesListView: View {
    @State private var testArr: [String] = []
    @State private var isShowCreatHeroView = false
    
    var body: some View {
        VStack {
            HeroListNavigationView()
            HeroesCell(
                heroTestArray: $testArr,
                isShowCreatHeroView: $isShowCreatHeroView
            )
            
            Spacer()
        }
        .padding()
        .overlay {
            if isShowCreatHeroView {
                CreateHeroView(
                    isShowCreatHeroView: $isShowCreatHeroView
                )
            }
        }
    }
}

#Preview {
    HeroesListView()
}
