//
//  ContentView.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 24.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text(StringConstants.titel.localized)
                    .font(.system(size: 60))
                
                Spacer()
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
