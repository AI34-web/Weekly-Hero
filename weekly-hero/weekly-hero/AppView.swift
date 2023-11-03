//
//  AppView.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 02.11.2023.
//

import SwiftUI

struct AppView: View {
    private var coordinator: Coordinator

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        coordinator.rootView
    }
}

#Preview {
    AppView(
        coordinator: .init()
    )
}
