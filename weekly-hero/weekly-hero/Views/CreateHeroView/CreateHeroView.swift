//
//  CreateHeroView.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 26.10.2023.
//

import SwiftUI

struct CreateHeroView: View {
    @State private var races = [HeroRace]()
    
    @Binding var isShowCreatHeroView: Bool
    
    @StateObject var networkManager = NetworkManager.shared
    
    var body: some View {
        VStack {
            CreateHeroNavigationView()
            CreateHeroBackButton(
                isShowCreatHeroView: $isShowCreatHeroView
            )
            
            Spacer()
            
            SelectRaceView(races: $races)
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .onAppear {
            networkManager.loadRacesData()
            races = networkManager.heroRaces
            
            debugPrint(networkManager.heroRaces)
        }
    }
}

#Preview {
    CreateHeroView(isShowCreatHeroView: .constant(true))
}
