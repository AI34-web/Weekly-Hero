//
//  CreateHeroBackButton.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 27.10.2023.
//

import SwiftUI

struct CreateHeroBackButton: View {
    @Binding var isShowCreatHeroView: Bool
    
    var body: some View {
        HStack {
            Image(systemName: "arrowshape.backward.circle")
                .resizable()
                .frame(
                    width: 50,
                    height: 50
                )
                .onTapGesture {
                    withAnimation {
                        isShowCreatHeroView = false
                    }
                }
            
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    CreateHeroBackButton(
        isShowCreatHeroView: .constant(true)
    )
}
