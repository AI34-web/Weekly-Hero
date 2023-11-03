//
//  HeroesListView.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 24.10.2023.
//

import SwiftUI

struct HeroesListView: View {
    @State private var isShowCreatHeroView = false
    
    let viewModel: ViewModel

    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            HeroListNavigationView()
            HeroesCell(
                isShowCreatHeroView: $isShowCreatHeroView,
                viewModel: viewModel
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
    HeroesListView(
        viewModel: ViewModel(
        dataProvider: MockDataProvider()
    ))
}
