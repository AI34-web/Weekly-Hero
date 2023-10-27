//
//  RaceCell.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 27.10.2023.
//

import SwiftUI

struct RaceCell: View {
    var race: HeroRace
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.green.opacity(0.3))
                .frame(
                    height: 500
                )
            Text(race.name)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    RaceCell(
        race: HeroRace(
            id: "testID",
            name: "testName",
            characteristics: nil,
            skills: nil,
            subRaces: nil
        )
    )
}
