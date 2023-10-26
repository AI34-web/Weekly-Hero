//
//  HeroesListView.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 24.10.2023.
//

import SwiftUI

var tesHeroesArray: [String] = [
    "Bagbear",
    "Human",
    "Gnome",
    "Dwarf"
]
var tesHeroesArray1: [String] = ["DragonBorn"]
var tesHeroesArray2: [String] = []

struct HeroesListView: View {
    @State private var testArr: [String] = []
    
    var body: some View {
        VStack {
            HStack {
                Text(
                    StringConstants.heroesListViewTitle.localized
                )
                .font(.custom(.abosanovaHeading, size: 32))
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "person.fill.badge.minus")
                        .resizable()
                        .frame(
                            width: 40,
                            height: 40
                        )
                        .foregroundStyle(Color.red)
                })
            }
            .padding(.horizontal, 16)
            
            HeroesCell(
                heroTestArray: $testArr
            )
            
            Spacer()
        }
        .padding()
        .onAppear {
            testArr = tesHeroesArray2
        }
    }
}

#Preview {
    HeroesListView()
}
