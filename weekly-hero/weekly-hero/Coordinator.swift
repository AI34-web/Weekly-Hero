//
//  Coordinator.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 02.11.2023.
//

import SwiftData
import SwiftUI

@Observable
final class Coordinator {
    var rootView: AnyView = AnyView(EmptyView())
    
    private var modelContainer: ModelContainer?
    
    init() {
        Task { @MainActor in
            setUpView()
        }
    }
    
    @MainActor
    private func setUpView() {
        guard
            let modelContainer = try? ModelContainer(for: HeroModel.self)
        else {
            
            // Error handling
            return
        }
        self.modelContainer = modelContainer
        rootView = AnyView(
            
            HeroesListView(
                viewModel: ViewModel(
                    dataProvider: DataProvider(
                        context: modelContainer.mainContext
                    )
                )
            )
        )
    }
}
