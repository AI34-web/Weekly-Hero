//
//  CreateHeroNavigationView.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 27.10.2023.
//

import SwiftUI

struct CreateHeroNavigationView: View {
    var body: some View {
        HStack {
            Text("Создание Героя")
                .font(.custom(.abosanovaHeading, size: 32))
            
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    CreateHeroNavigationView()
}
